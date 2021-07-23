import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_category_detail_state.freezed.dart';

@freezed
abstract class AddCategoryDetailState with _$AddCategoryDetailState {
  factory AddCategoryDetailState({
    Exception? exception,
    @Default(false) isLoading,
  }) = _AddCategoryDetailState;

  AddCategoryDetailState._();
}