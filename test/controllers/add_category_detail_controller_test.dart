import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ecolog/controllers/add_category_detail/add_category_detail.dart';
import 'package:ecolog/application_model/firebases/firestore/category/category.dart';
import 'package:ecolog/application_model/mock/provider/firestore/mock_firestore.dart';
import 'package:ecolog/application_model/models/models.dart';

void main() {
  test('addCategory', () async {
    final container = ProviderContainer(
      overrides: [
        categoryDaoProvider.overrideWithProvider(Provider((ref) => ref.read(categoryDaoMockProvider)))
      ]
    );
    final target = container.read(addCategoryDetailProvider.notifier);
    expect(target.debugState.isLoading, false);
    expect(target.debugState.exception, null);
    //await target.addCategory(name: '', type: CategoryType.water, defaultValue: 0);
    target.addCategory(name: '', type: CategoryType.water, defaultValue: 0).then((_) {
      expect(target.debugState.isLoading, false);
    });
    /// Mockで2秒待機することは確定なのでここはtrueになる
    expect(target.debugState.isLoading, true);
    expect(target.debugState.exception, null);
  });

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