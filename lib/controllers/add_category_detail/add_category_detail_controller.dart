import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:ecolog/application_model/mock/provider/firestore/mock_firestore.dart';
import 'package:ecolog/controllers/add_category_detail/add_category_detail.dart';
import 'package:ecolog/application_model/entities/entities.dart';
import 'package:ecolog/util/util.dart';

final addCategoryDetailProvider = StateNotifierProvider<AddCategoryDetailController, AddCategoryDetailState>(
      (ref) => AddCategoryDetailController(ref.read),
);

class AddCategoryDetailController extends StateNotifier<AddCategoryDetailState> {
  AddCategoryDetailController(this._read) : super(AddCategoryDetailState());

  final Reader _read;

  Future<void> addCategory(CategoryEntity categoryEntity) async {
    try {
      state = state.copyWith(exception: null, isLoading: true);
      await _read(categoryDaoMockProvider).addCategory(categoryEntity).then((_) {
        ///TODO: Mockなので修正する
        state = state.copyWith(exception: null, isLoading: false);
      });
    } on FirebaseAuthException catch (e) {
      logger.shout('StartController Error:$e');
      state = state.copyWith(
        exception: e,
        isLoading: false,
      );
      rethrow;
    }
  }
}