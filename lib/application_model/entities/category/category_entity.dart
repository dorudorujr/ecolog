import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'package:ecolog/application_model/models/models.dart';

part 'category_entity.freezed.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    required String id,
    required String categoryName,
    required CategoryType categoryType,
    required int defaultValue
  }) = _CategoryEntity;

  factory CategoryEntity.notId({
    required String categoryName,
    required CategoryType categoryType,
    required int defaultValue}) {
    final id = const Uuid().v4();
    return CategoryEntity(
      id: id,
      categoryName: categoryName,
      categoryType: categoryType,
      defaultValue: defaultValue
    );
  }
  
  factory CategoryEntity.fromJson(Map<String, dynamic> json) {
    return CategoryEntity(
        id: json['id'],
        categoryName: json['category_name'],
        categoryType: GetCategoryType.get(json['category_type']),
        defaultValue: json['default_value']);
  }
}