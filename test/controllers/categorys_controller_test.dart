import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ecolog/application_model/firebases/firestore/category/category.dart';
import 'package:ecolog/application_model/mock/provider/firestore/mock_firestore.dart';
import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/controllers/categorys/categorys.dart';

void main() {
  test('init', () async {
    final container = ProviderContainer(
      overrides: [
        categoryDaoProvider.overrideWithProvider(Provider((ref) => ref.read(categoryDaoMockProvider)))
      ]
    );
    final target = container.read(categorysControllerProvider.notifier);
    await Future.delayed(const Duration(seconds: 1));
    expect(target.debugState.categories?.length, 4);
  });
}