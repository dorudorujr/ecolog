import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info/package_info.dart';
import 'dart:convert';
import 'package:version/version.dart';

import 'remote_config.dart';
import 'package:ecolog/application_model/entities/update_info_entity/update_info_entity.dart';
import 'package:ecolog/application_model/models/models.dart';

final updateRequesterProvider = FutureProvider<UpdateRequestType>((ref) async {
  final remoteConfig = ref.watch(remoteConfigProvider);
  await remoteConfig.fetchAndActivate();
  // 現在のアプリバージョンを取得するためにPackageInfoを利用
  final appPackageInfo = await PackageInfo.fromPlatform();
  // キーを指定して文字列として取得
  final string = remoteConfig.getString('update_info');

  if (string.isEmpty) {
    return UpdateRequestType.not;
  }
  // JSON to Map
  final map = json.decode(string) as Map<String, Object?>;
  // Map(JSON) to Entity
  final entity = UpdateInfoEntity.fromJson(map);

  final enabledAt = entity.enabledAt;
  final requiredVersion = Version.parse(entity.requiredVersion);
  final currentVersion = Version.parse(appPackageInfo.version);
  // 現在のバージョンより新しいバージョンが指定されているか
  final hasNewVersion = requiredVersion > currentVersion;
  // 強制アップデート有効期間内かどうか
  final isEnabled = enabledAt.compareTo(DateTime.now()) < 0;

  if (!isEnabled && !hasNewVersion) {
    // 有効期間外、もしくは新しいバージョンは無い
    return UpdateRequestType.not;
  }
  return entity.canCancel
      ? UpdateRequestType.cancelable
      : UpdateRequestType.forcibly;
});
