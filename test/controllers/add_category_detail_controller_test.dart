import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ecolog/controllers/add_category_detail/add_category_detail.dart';

void main() {
  test('setCategoryName', () async {
    final container = ProviderContainer(overrides: []);
    final target = container.read(addCategoryDetailProvider.notifier);
    expect(target.debugState.categoryName, '');
    expect(target.debugState.coefficient, '');
    expect(target.debugState.unit, '');
    expect(target.debugState.isEnable, false);
    target.setCategoryName('test');
    expect(target.debugState.categoryName, 'test');
    expect(target.debugState.coefficient, '');
    expect(target.debugState.unit, '');
    expect(target.debugState.isEnable, false);
  });

  test('setCoefficient', () async {
    final container = ProviderContainer(overrides: []);
    final target = container.read(addCategoryDetailProvider.notifier);
    expect(target.debugState.categoryName, '');
    expect(target.debugState.coefficient, '');
    expect(target.debugState.unit, '');
    expect(target.debugState.isEnable, false);
    target.setCoefficient('test');
    expect(target.debugState.categoryName, '');
    expect(target.debugState.coefficient, 'test');
    expect(target.debugState.unit, '');
    expect(target.debugState.isEnable, false);
  });

  test('setUnit', () async {
    final container = ProviderContainer(overrides: []);
    final target = container.read(addCategoryDetailProvider.notifier);
    expect(target.debugState.categoryName, '');
    expect(target.debugState.coefficient, '');
    expect(target.debugState.unit, '');
    expect(target.debugState.isEnable, false);
    target.setUnit('test');
    expect(target.debugState.categoryName, '');
    expect(target.debugState.coefficient, '');
    expect(target.debugState.unit, 'test');
    expect(target.debugState.isEnable, false);
  });

  test('isEnable', () async {
    final container = ProviderContainer(overrides: []);
    final target = container.read(addCategoryDetailProvider.notifier);
    expect(target.debugState.categoryName, '');
    expect(target.debugState.coefficient, '');
    expect(target.debugState.unit, '');
    expect(target.debugState.isEnable, false);
    target.setCategoryName('test');
    target.setCoefficient('test');
    target.setUnit('test');
    expect(target.debugState.categoryName, 'test');
    expect(target.debugState.coefficient, 'test');
    expect(target.debugState.unit, 'test');
    expect(target.debugState.isEnable, true);
  });
}