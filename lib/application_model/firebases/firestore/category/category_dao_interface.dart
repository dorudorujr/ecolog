import 'package:ecolog/application_model/entities/entities.dart';
import 'package:ecolog/application_model/models/models.dart';

abstract class CategoryDaoInterFace {
  /// カテゴリー取得
  List<CategoryEntity> getCategorys();

  /// デフォルトカテゴリー追加
  void addDefaultCategorys();

  /// カテゴリー追加
  Future<void> addCategory({required String name, required CategoryType type, required int defaultValue });
}