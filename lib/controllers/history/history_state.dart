import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ecolog/application_model/entities/entities.dart';

part 'history_state.freezed.dart';

@freezed
abstract class HistoryState with _$HistoryState {
  factory HistoryState({
    Exception? exception,
    @Default(false) isLoading,
    @Default([]) List<EcoLogEntity> histories,
  }) = _HistoryState;
}