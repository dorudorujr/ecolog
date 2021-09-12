import 'package:ecolog/application_model/entities/entities.dart';
import 'package:ecolog/application_model/models/models.dart';

abstract class CategoryDaoInterFace {
  /// カテゴリー取得
  Future<List<CategoryEntity>> getCategories();

  /// デフォルトカテゴリー追加
  void addDefaultCategories();

  /// カテゴリー追加
  Future<void> addCategory({required String name, required CategoryType type, required int defaultValue });
}