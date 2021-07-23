import 'package:ecolog/util/util.dart';

enum CategoryType {
  /// 電気
  electricity,
  /// 水道
  water,
  /// ガソリン
  gasoline,
  /// 都市ガス
  cityGas,
}

extension CategoryTypeExt on CategoryType {
  /// CO2排出係数
  double get coefficient {
    switch(this) {
      case CategoryType.electricity:
        return 0.441;
      case CategoryType.gasoline:
        return 2.322;
      case CategoryType.cityGas:
        return 2.21;
      case CategoryType.water:
        return 253;
    }
  }

  /// カテゴリー名
  String get categoryName {
    switch(this) {
      case CategoryType.electricity:
        return '電気';
      case CategoryType.gasoline:
        return 'ガゾリン';
      case CategoryType.cityGas:
        return '都市ガス';
      case CategoryType.water:
        return '水道';
    }
  }
}

class GetCategoryType {
  static CategoryType get(String categoryType) {
    switch(categoryType) {
      case 'electricity':
        return CategoryType.electricity;
      case 'water':
        return CategoryType.water;
      case 'gasoline':
        return CategoryType.gasoline;
      case 'cityGas':
        return CategoryType.cityGas;
      default:
        logger.shout('CategoryType Mapping Error');
        return CategoryType.electricity;
    }
  }
}