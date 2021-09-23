import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:ecolog/application_model/firebases/firestore/ecolog/ecolog.dart';
import 'package:ecolog/controllers/history/history.dart';

final historyControllerProvider = StateNotifierProvider<HistoryController, HistoryState>(
      (ref) => HistoryController(ref.read),
);

class HistoryController extends StateNotifier<HistoryState> {
  HistoryController(this._read) : super(HistoryState()) {
    final firestoreDao = _read(ecoLogDaoProvider);
    final stream = firestoreDao.getFirstEcoLogs();

    stream.listen((event) {
      state = state.copyWith(histories: event);
    });
  }

  final Reader _read;

  Future<void> getNextEcoLogs() async {
    final addHistories = await _read(ecoLogDaoProvider).getNextEcoLogs(startAfterDate: state.histories.last.date, startAfterId: state.histories.last.id);
    final newHistories = [...state.histories, ...addHistories];
    state = state.copyWith(histories: newHistories);
  }
}