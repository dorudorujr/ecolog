import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ecolog/controllers/ecolog_input/ecolog_input.dart';
import 'package:ecolog/application_model/mock/provider/firestore/mock_firestore.dart';
import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/application_model/firebases/firestore/ecolog/ecolog.dart';

void main() {
  test('addEcolog', () async {
    final container = ProviderContainer(
      overrides: [
        ecoLogDaoProvider.overrideWithProvider(Provider((ref) => ref.read(ecoLogDaoMockProvider)))
      ]
    );
    final target = container.read(ecologInputProvider.notifier);
    expect(target.debugState.isLoading, false);
    expect(target.debugState.exception, null);
    target.addEcolog(name: "", type: CategoryType.water, unit: '1').then((_) {
      expect(target.debugState.isLoading, false);
    });
    /// Mockで2秒待機することは確定なのでここはtrueになる
    expect(target.debugState.isLoading, true);
    expect(target.debugState.exception, null);
  });

  test('setUnit', () async {
    final container = ProviderContainer(overrides: []);
    final target = container.read(ecologInputProvider.notifier);
    expect(target.debugState.unit, '');
    expect(target.debugState.date, null);
    expect(target.debugState.isEnable, false);
    target.setUnit('test');
    expect(target.debugState.unit, 'test');
    expect(target.debugState.date, null);
    expect(target.debugState.isEnable, true);
  });

  test('setDate', () async {
    final container = ProviderContainer(overrides: []);
    final target = container.read(ecologInputProvider.notifier);
    expect(target.debugState.unit, '');
    expect(target.debugState.date, null);
    expect(target.debugState.isEnable, false);
    target.setDate(DateTime.parse('2021-08-29 10:10:10.10').toLocal());
    expect(target.debugState.unit, '');
    expect(target.debugState.date, DateTime.parse('2021-08-29 10:10:10.10').toLocal());
    expect(target.debugState.isEnable, false);
  });
}