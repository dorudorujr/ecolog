import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ecolog/application_model/entities/entities.dart';
import 'package:ecolog/application_model/models/models.dart';

final categoryDaoMockProvider = Provider((_) => CategoryDaoMock());

class CategoryDaoMock {
  List<CategoryEntity> getCategorys() {
    return [
      const CategoryEntity(categoryName: '照明', categoryType: CategoryType.electricity, defaultValue: 100),
      const CategoryEntity(categoryName: '自家用車', categoryType: CategoryType.gasoline, defaultValue: 200),
      const CategoryEntity(categoryName: '水道', categoryType: CategoryType.water, defaultValue: 150),
      const CategoryEntity(categoryName: '自宅のガス', categoryType: CategoryType.cityGas, defaultValue: 170)
    ];
  }
}