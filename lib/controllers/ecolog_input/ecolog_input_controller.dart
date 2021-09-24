import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/controllers/ecolog_input/ecolog_input.dart';
import 'package:ecolog/application_model/entities/eco_log/eco_log_entity.dart';
import 'package:ecolog/application_model/firebases/firestore/ecolog/ecolog.dart';

final ecologInputProvider = StateNotifierProvider<EcologInputController, EcologInputState>(
      (ref) => EcologInputController(ref.read),
);

class EcologInputController extends StateNotifier<EcologInputState> {
  EcologInputController(this._read) : super(EcologInputState());

  final Reader _read;

  Future<void> addEcolog({
    required String name,
    required CategoryType type,
    required String unit
  }) async {
    state = state.copyWith(exception: null, isLoading: true);
    //// dateはstateから取得する
    //// dateの入力値はstateでしか保持していないので
    final entity = EcoLogEntity.toEcoLogEntity(
        name: name,
        value: int.parse(unit),
        categoryType: type,
        date: state.date,
    );
    await _read(ecoLogDaoProvider).addEcoLog(entity);
    state = state.copyWith(exception: null, isLoading: false);
  }

  void setUnit(String unit) {
    state = state.copyWith(unit: unit);
    final isEnable = state.unit.isNotEmpty;
    state = state.copyWith(isEnable: isEnable);
  }

  void setDate(DateTime date) {
    state = state.copyWith(date: date);
    final isEnable = state.unit.isNotEmpty;
    state = state.copyWith(isEnable: isEnable);
  }
}