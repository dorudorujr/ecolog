import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:ecolog/controllers/categorys/categorys.dart';
import 'package:ecolog/application_model/firebases/firestore/category/category.dart';

final categorysControllerProvider = StateNotifierProvider<CategorysController, CategorysState>(
    (ref) => CategorysController(ref.read),
);

class CategorysController extends StateNotifier<CategorysState> {
  CategorysController(this._read) : super(CategorysState()) {
    final stream = _read(categoryDaoProvider).getCategories();
    stream.listen((event) {
      state = state.copyWith(categories: event);
    });
  }

  final Reader _read;
}