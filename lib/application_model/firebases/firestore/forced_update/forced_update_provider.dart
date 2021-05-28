import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:package_info/package_info.dart';
import 'package:version/version.dart';

import 'package:ecolog/application_model/entities/update_info_entity/update_info_entity.dart';
import 'package:ecolog/application_model/models/models.dart';

/// 強制アップデートProvider
/// TODO: error時の処理対応
final forcedUpdateProvider = FutureProvider<UpdateRequestType>((ref) async {
  // 現在のアプリバージョンを取得するためにPackageInfoを利用
  final appPackageInfo = await PackageInfo.fromPlatform();

  final collection = await FirebaseFirestore.instance.collection('version').get();
  final data = collection.docs.first.data();
  final updateInfo = UpdateInfoEntity.fromJson(data);

  final enabledAt = updateInfo.enabledAt;
  final requiredVersion = Version.parse(updateInfo.requiredVersion);
  final currentVersion = Version.parse(appPackageInfo.version);
  // 現在のバージョンより新しいバージョンが指定されているか
  final hasNewVersion = requiredVersion > currentVersion;
  // 強制アップデート有効期間内かどうか
  final isEnabled = enabledAt.compareTo(DateTime.now()) < 0;

  if (!isEnabled && !hasNewVersion) {
    // 有効期間外、もしくは新しいバージョンは無い
    return UpdateRequestType.not;
  }
  return updateInfo.canCancel
      ? UpdateRequestType.cancelable
      : UpdateRequestType.forcibly;
});