import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ecolog/application_model/entities/entities.dart';
import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/application_model/firebases/firestore/category/category.dart';

final categoryDaoMockProvider = Provider<CategoryDaoInterFace>((_) => CategoryDaoMock());

class CategoryDaoMock implements CategoryDaoInterFace {
  CategoryDaoMock() : super() {
    _categoryEntitys = [
      const CategoryEntity(categoryName: '間接照明', categoryType: CategoryType.electricity, defaultValue: 100),
      const CategoryEntity(categoryName: '社用車', categoryType: CategoryType.gasoline, defaultValue: 200),
      const CategoryEntity(categoryName: 'お風呂', categoryType: CategoryType.water, defaultValue: 150),
      const CategoryEntity(categoryName: '自宅のガス', categoryType: CategoryType.cityGas, defaultValue: 170)
    ];
  }

  late final List<CategoryEntity> _categoryEntitys;

  List<CategoryEntity> getCategorys() {
    return _categoryEntitys;
  }

  /// アカウント登録時にデフォルトのカテゴリーを追加する処理
  /// アカウント登録時のみにしか呼ばない
  void addDefaultCategorys() {
    final defaultCategorys = [
      const CategoryEntity(categoryName: '照明', categoryType: CategoryType.electricity, defaultValue: 30),
      const CategoryEntity(categoryName: 'テレビ', categoryType: CategoryType.electricity, defaultValue: 280),
    ];
    defaultCategorys.forEach((element) {
      _categoryEntitys.add(element);
    });
  }

  Future<void> addCategory(CategoryEntity categoryEntity) {
    return Future.delayed(const Duration(seconds: 2));
  }
}