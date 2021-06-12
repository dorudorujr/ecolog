import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:version/version.dart';

import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/application_model/firebases/firestore/forced_update/forced_update.dart';
import 'package:ecolog/application_model/entities/update_info_entity/update_info_entity.dart';
import 'package:ecolog/util/provider/package_info/package_info.dart';
import 'package:ecolog/util/util.dart';
import 'splash_state.dart';

final splashControllerProvider = StateNotifierProvider<SplashController, SplashState>(
    (ref) => SplashController(ref.read),
);

class SplashController extends StateNotifier<SplashState> {
  SplashController(this._read) : super(SplashState()) {
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
        state = state.copyWith(type: SplashStatusType.forcibly);
      } else {
        state = state.copyWith(type: SplashStatusType.notSignIn);
      }
    } on Exception catch (e) {
      logger.shout('SplashController Error:${e}');
      state = state.copyWith(
          exception: e as Exception,
          type: SplashStatusType.load
      );
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