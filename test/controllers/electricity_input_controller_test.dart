import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ecolog/controllers/electricity_input/electricity_input.dart';

void main() {
  test('setUnit', () async {
    final container = ProviderContainer(overrides: []);
    final target = container.read(electricityInputProvider.notifier);
    expect(target.debugState.unit, '');
    expect(target.debugState.time, '');
    expect(target.debugState.date, null);
    expect(target.debugState.isEnable, false);
    target.setUnit('test');
    expect(target.debugState.unit, 'test');
    expect(target.debugState.time, '');
    expect(target.debugState.date, null);
    expect(target.debugState.isEnable, false);
  });

  test('setTime', () async {
    final container = ProviderContainer(overrides: []);
    final target = container.read(electricityInputProvider.notifier);
    expect(target.debugState.unit, '');
    expect(target.debugState.time, '');
    expect(target.debugState.date, null);
    expect(target.debugState.isEnable, false);
    target.setTime('test');
    expect(target.debugState.unit, '');
    expect(target.debugState.time, 'test');
    expect(target.debugState.date, null);
    expect(target.debugState.isEnable, false);
  });

  test('setDate', () async {
    final container = ProviderContainer(overrides: []);
    final target = container.read(electricityInputProvider.notifier);
    expect(target.debugState.unit, '');
    expect(target.debugState.time, '');
    expect(target.debugState.date, null);
    expect(target.debugState.isEnable, false);
    target.setDate(DateTime.parse('2021-08-29 10:10:10.10').toLocal());
    expect(target.debugState.unit, '');
    expect(target.debugState.time, '');
    expect(target.debugState.date, DateTime.parse('2021-08-29 10:10:10.10').toLocal());
    expect(target.debugState.isEnable, false);
  });

  test('isEnable', () async {
    final container = ProviderContainer(overrides: []);
    final target = container.read(electricityInputProvider.notifier);
    expect(target.debugState.unit, '');
    expect(target.debugState.time, '');
    expect(target.debugState.isEnable, false);
    target.setUnit('test');
    target.setTime('test');
    expect(target.debugState.unit, 'test');
    expect(target.debugState.time, 'test');
    expect(target.debugState.isEnable, true);
  });
}