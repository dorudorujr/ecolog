import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:ecolog/application_model/entities/update_info_entity/update_info_entity.dart';

/// 強制アップデート情報取得Provider
final forcedUpdateProvider = FutureProvider<UpdateInfoEntity>((ref) async {
  final collection = await FirebaseFirestore.instance.collection('version').get();
  final data = collection.docs.first.data();

  /// TODO: error時の処理対応
  return UpdateInfoEntity.fromJson(data);
});