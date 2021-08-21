import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:ecolog/controllers/electricity_input/electricity_input.dart';
import 'package:ecolog/application_model/entities/eco_log/eco_log_entity.dart';

final electricityInputProvider = StateNotifierProvider<ElectricityInputController, ElectricityInputState>(
      (ref) => ElectricityInputController(ref.read),
);

class ElectricityInputController extends StateNotifier<ElectricityInputState> {
  ElectricityInputController(this._read) : super(ElectricityInputState());

  final Reader _read;

  Future<void> addEcoLog(EcoLogEntity ecoLogEntity) async {
    ////TODO: Firestoreとつなげる
    state = state.copyWith(exception: null, isLoading: true);
    return Future.delayed(const Duration(seconds: 2), () {
      state = state.copyWith(exception: null, isLoading: false);
    });
  }

  void setUnit(String unit) {
    state = state.copyWith(unit: unit);
    final isEnable = state.unit.isNotEmpty && state.time.isNotEmpty && state.date.isNotEmpty;
    state = state.copyWith(isEnable: isEnable);
  }

  void setTime(String time) {
    state = state.copyWith(time: time);
    final isEnable = state.unit.isNotEmpty && state.time.isNotEmpty && state.date.isNotEmpty;
    state = state.copyWith(isEnable: isEnable);
  }

  void setDate(String date) {
    state = state.copyWith(date: date);
    final isEnable = state.unit.isNotEmpty && state.time.isNotEmpty && state.date.isNotEmpty;
    state = state.copyWith(isEnable: isEnable);
  }
}