import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:ecolog/application_model/firebases/auth/ecolog_auth.dart';
import 'start_state.dart';
import 'package:ecolog/util/util.dart';
import 'package:ecolog/application_model/mock/provider/firestore/mock_firestore.dart';

final startControllerProvider = StateNotifierProvider<StartController, StartState>(
      (ref) => StartController(ref.read),
);

class StartController extends StateNotifier<StartState> {
  StartController(this._read) : super(StartState());

  final Reader _read;

  Future<void> anonymousSignIn() async {
    try {
      state = state.copyWith(exception: null, isLoading: true);
      await _read(ecologAuthProvider).authentication().then((value) {
        ///TODO: Mockなので修正する
        _read(categoryDaoMockProvider).addDefaultCategorys();
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