import 'package:ecolog/application_model/entities/entities.dart';

abstract class CategoryDaoInterFace {
  /// カテゴリー取得
  List<CategoryEntity> getCategorys();

  ///デフォルトカテゴリー追加
  void addDefaultCategorys();
}