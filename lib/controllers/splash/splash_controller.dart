import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:version/version.dart';

import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/application_model/firebases/firestore/forced_update/forced_update.dart';
import 'package:ecolog/application_model/entities/update_info_entity/update_info_entity.dart';
import 'package:ecolog/util/provider/package_info/package_info.dart';

final splashControllerProvider = StateNotifierProvider<SplashController, SplashStatusType>(
    (ref) => SplashController(ref.read),
);

class SplashController extends StateNotifier<SplashStatusType> {
  SplashController(this._read) : super(SplashStatusType.load) {
    () async {
      await _check();
    }();
  }

  final Reader _read;

  /// testで使用するためにnot private
  Future<void> _check() async {
    try {
      final isForcedUpdate = await _isForcedUpdate(await _read(forcedUpdateProvider.future));

      if (isForcedUpdate) {
        state = SplashStatusType.forcibly;
      } else {
        state = SplashStatusType.notSignIn;
      }
    } catch (e) {
      ///TODO:Logとして表示するようにする
      print('error:${e}');
    }
  }

  /// 強制アップデート有無
  Future<bool> _isForcedUpdate(UpdateInfoEntity updateInfo) async {
    final version = await _read(packageInfoProvider.future);

    final enabledAt = updateInfo.enabledAt;
    final requiredVersion = Version.parse(updateInfo.requiredVersion);
    final currentVersion = Version.parse(version);

    // 現在のバージョンより新しいバージョンが指定されているか
    final hasNewVersion = requiredVersion > currentVersion;
    // 強制アップデート有効期間内かどうか
    final isEnabled = enabledAt.compareTo(DateTime.now()) >= 0;

    return hasNewVersion && isEnabled;
  }
}