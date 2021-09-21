import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ecolog/application_model/entities/category/category_entity.dart';

part 'categorys_state.freezed.dart';

@freezed
abstract class CategorysState with _$CategorysState {
  factory CategorysState({
    Exception? exception,
    @Default(false) isLoading,
    List<CategoryEntity>? categories,
  }) = _CategorysState;

  CategorysState._();
}