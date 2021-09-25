import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:ecolog/controllers/add_category_detail/add_category_detail.dart';
import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/util/util.dart';
import 'package:ecolog/application_model/firebases/firestore/category/category.dart';

final addCategoryDetailProvider = StateNotifierProvider<AddCategoryDetailController, AddCategoryDetailState>(
      (ref) => AddCategoryDetailController(ref.read),
);

class AddCategoryDetailController extends StateNotifier<AddCategoryDetailState> {
  AddCategoryDetailController(this._read) : super(AddCategoryDetailState());

  final Reader _read;

  Future<void> addCategory({required String name, required CategoryType type, required int defaultValue }) async {
    try {
      state = state.copyWith(exception: null, isLoading: true);
      await _read(categoryDaoProvider).addCategory(name: name, type: type, defaultValue: defaultValue).then((_) {
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

  void setCategoryName(String categoryName) {
    state = state.copyWith(categoryName: categoryName);
    final isEnable = state.categoryName.isNotEmpty && state.coefficient.isNotEmpty && state.unit.isNotEmpty;
    state = state.copyWith(isEnable: isEnable);
  }

  void setCoefficient(String coefficient) {
    state = state.copyWith(coefficient: coefficient);
    final isEnable = state.categoryName.isNotEmpty && state.coefficient.isNotEmpty && state.unit.isNotEmpty;
    state = state.copyWith(isEnable: isEnable);
  }

  void setUnit(String unit) {
    state = state.copyWith(unit: unit);
    final isEnable = state.categoryName.isNotEmpty && state.coefficient.isNotEmpty && state.unit.isNotEmpty;
    state = state.copyWith(isEnable: isEnable);
  }
}