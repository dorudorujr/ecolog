import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ecolog/application_model/mock/provider/firestore/mock_firestore.dart';
import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/application_model/firebases/firestore/ecolog/ecolog.dart';
import 'package:ecolog/controllers/history/history.dart';

void main() {
  test('init', () async {
    final container = ProviderContainer(
      overrides: [
        ecoLogDaoProvider.overrideWithProvider(Provider((ref) => ref.read(ecoLogDaoMockProvider)))
      ]
    );
    final target = container.read(historyControllerProvider.notifier);
    await Future.delayed(const Duration(seconds: 1));
    expect(target.debugState.histories.length, 6);
  });

  test('getNextEcoLogs', () async {
    final container = ProviderContainer(
        overrides: [
          ecoLogDaoProvider.overrideWithProvider(Provider((ref) => ref.read(ecoLogDaoMockProvider)))
        ]
    );
    final target = container.read(historyControllerProvider.notifier);
    await Future.delayed(const Duration(seconds: 1));
    expect(target.debugState.histories.length, 6);
    await target.getNextEcoLogs();
    expect(target.debugState.histories.length, 7);
  });
}