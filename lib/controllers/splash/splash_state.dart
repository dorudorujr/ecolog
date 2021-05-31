import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ecolog/application_model/models/models.dart';

part 'splash_state.freezed.dart';

@freezed
abstract class SplashState with _$SplashState {
  factory SplashState({
    Error? error,
    @Default(SplashStatusType.load) type,
  }) = _SplashState;

  SplashState._();
}