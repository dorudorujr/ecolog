import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_state.freezed.dart';

@freezed
abstract class ConfigState with _$ConfigState {
  factory ConfigState({
    Exception? exception,
    @Default(false) isLoading,
  }) = _ConfigState;

  ConfigState._();
}