import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:ecolog/controllers/electricity_input/electricity_input.dart';
import 'package:ecolog/application_model/entities/eco_log/eco_log_entity.dart';
import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/application_model/firebases/firestore/ecolog/ecolog.dart';

final electricityInputProvider = StateNotifierProvider<ElectricityInputController, ElectricityInputState>(
      (ref) => ElectricityInputController(ref.read),
);

class ElectricityInputController extends StateNotifier<ElectricityInputState> {
  ElectricityInputController(this._read) : super(ElectricityInputState());

  final Reader _read;

  Future<void> addEcoLog({
    required String name,
    required CategoryType type,
    required String unitValue,
    required String time,
    }) async {
    state = state.copyWith(exception: null, isLoading: true);
    //// dateはstateから取得する
    //// dateの入力値はstateでしか保持していないので
    final entity = EcoLogEntity.toEcoLogEntity(
        name: name,
        value: int.parse(unitValue),
        categoryType: type,
        time: int.parse(time),
        date: state.date
    );
    await _read(ecoLogDaoProvider).addEcoLog(entity);
    state = state.copyWith(exception: null, isLoading: false);
  }

  void setUnit(String unit) {
    state = state.copyWith(unit: unit);
    final isEnable = state.unit.isNotEmpty && state.time.isNotEmpty;
    state = state.copyWith(isEnable: isEnable);
  }

  void setTime(String time) {
    state = state.copyWith(time: time);
    final isEnable = state.unit.isNotEmpty && state.time.isNotEmpty;
    state = state.copyWith(isEnable: isEnable);
  }

  void setDate(DateTime date) {
    state = state.copyWith(date: date);
    final isEnable = state.unit.isNotEmpty && state.time.isNotEmpty;
    state = state.copyWith(isEnable: isEnable);
  }
}