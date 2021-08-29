import 'package:freezed_annotation/freezed_annotation.dart';

part 'electricity_input_state.freezed.dart';

@freezed
abstract class ElectricityInputState with _$ElectricityInputState {
  factory ElectricityInputState({
    Exception? exception,
    @Default('') String unit,
    @Default('') String time,
    @Default('') String date,
    @Default(false) isEnable,
    @Default(false) isLoading,
  }) = _ElectricityInputState;

  ElectricityInputState._();
}