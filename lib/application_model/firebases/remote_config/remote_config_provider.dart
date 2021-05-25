import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Remote Configの初期設定とインスタンスを提供するProvider
final remoteConfigProvider = Provider<RemoteConfig>((ref) {
  final rc = RemoteConfig.instance;

  /// TODO: 環境によって分ける
  // final flavor = ref.watch(flavorProvider);
  // final interval =
  // flavor == Flavor.production ? const Duration(minutes: 12) : Duration.zero;

  // タイムアウトとフェッチのインターバル時間を設定する
  rc.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(minutes: 1),
    minimumFetchInterval: Duration.zero,
  ));
  return rc;
});