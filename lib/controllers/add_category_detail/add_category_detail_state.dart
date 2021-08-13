import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_category_detail_state.freezed.dart';

@freezed
abstract class AddCategoryDetailState with _$AddCategoryDetailState {
  factory AddCategoryDetailState({
    Exception? exception,
    @Default('') String categoryName,
    @Default('') String coefficient,
    @Default('') String unit,
    @Default(false) isEnable,
    @Default(false) isLoading,
  }) = _AddCategoryDetailState;

  AddCategoryDetailState._();
}