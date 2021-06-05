import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:ecolog/application_model/firebases/auth/anonymous/anonymous.dart';
import 'start_state.dart';

final startControllerProvider = StateNotifierProvider<StartController, StartState>(
      (ref) => StartController(ref.read),
);

class StartController extends StateNotifier<StartState> {
  StartController(this._read) : super(StartState());

  final Reader _read;

  Future<void> anonymousSignIn() async {
    state = state.copyWith(isLoading: true);
    await _read(anonymousAuthenticationProvider).authentication().then((value) {
      state = state.copyWith(isLoading: false);
    });
  }
}