import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:ecolog/application_model/firebases/auth/ecolog_auth.dart';
import 'config_state.dart';
import 'package:ecolog/util/util.dart';

final configControllerProvider = StateNotifierProvider<ConfigController, ConfigState>(
      (ref) => ConfigController(ref.read),
);

class ConfigController extends StateNotifier<ConfigState> {
  ConfigController(this._read) : super(ConfigState());

  final Reader _read;

  Future<void> signOut() async {
    try {
      state = state.copyWith(exception: null, isLoading: true);
      await _read(ecologAuthProvider).signout().then((value) {
        state = state.copyWith(exception: null, isLoading: false);
      });
    } on FirebaseAuthException catch (e) {
      logger.shout('StartController Error:${e}');
      state = state.copyWith(
        exception: e,
        isLoading: false,
      );
      rethrow;
    }
  }
}