import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_state.freezed.dart';

@freezed
abstract class StartState with _$StartState {
  factory StartState({
    Exception? exception,
    @Default(false) isLoading,
  }) = _StartState;

  StartState._();
}