import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:ecolog/application_model/mock/provider/firestore/mock_firestore.dart';
import 'package:ecolog/controllers/history/history.dart';

final historyControllerProvider = StateNotifierProvider<HistoryController, HistoryState>(
      (ref) => HistoryController(ref.read),
);

class HistoryController extends StateNotifier<HistoryState> {
  HistoryController(this._read) : super(HistoryState()) {
    final firestoreDao = _read(ecoLogDaoMockProvider);
    final stream = firestoreDao.getEcoLogs();

    stream.listen((event) {
      state = state.copyWith(histories: event);
    });
  }

  final Reader _read;
}