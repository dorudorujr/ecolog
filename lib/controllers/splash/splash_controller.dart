import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/application_model/firebases/firestore/forced_update/forced_update.dart';

final splashControllerProvider = StateNotifierProvider<SplashController, SplashStatusType>(
    (ref) => SplashController(ref.read),
);

class SplashController extends StateNotifier<SplashStatusType> {
  SplashController(this._read) : super(SplashStatusType.load) {
    _check();
  }

  final Reader _read;

  Future<void> _check() async {
    final forcedCheck = await _read(forcedUpdateProvider.future);

    if(forcedCheck == UpdateRequestType.forcibly) {
      state = SplashStatusType.forcibly;
    } else {
      state = SplashStatusType.notSignIn;
    }
  }
}