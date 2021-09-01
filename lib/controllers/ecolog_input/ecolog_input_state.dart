import 'package:freezed_annotation/freezed_annotation.dart';

part 'ecolog_input_state.freezed.dart';

@freezed
abstract class EcologInputState with _$EcologInputState {
  factory EcologInputState({
    Exception? exception,
    @Default('') String unit,
    DateTime? date,
    @Default(false) isEnable,
    @Default(false) isLoading,
  }) = _EcologInputState;

  EcologInputState._();
}