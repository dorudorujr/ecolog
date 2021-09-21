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
}