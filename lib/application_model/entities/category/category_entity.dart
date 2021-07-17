import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ecolog/application_model/models/models.dart';

part 'category_entity.freezed.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    required String categoryName,
    required CategoryType categoryType,
    required int defaultValue
  }) = _CategoryEntity;
  
  factory CategoryEntity.fromJson(Map<String, dynamic> json) {
    return CategoryEntity(
        categoryName: json['categoryName'],
        categoryType: GetCategoryType.get(json['categoryType']),
        defaultValue: json['defaultValue']);
  }
}