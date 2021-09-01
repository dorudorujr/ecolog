import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ecolog/controllers/ecolog_input/ecolog_input.dart';

void main() {
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