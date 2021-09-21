import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:ecolog/application_model/firebases/auth/ecolog_auth.dart';
import 'package:ecolog/controllers/start/start.dart';
import 'package:ecolog/application_model/firebases/firestore/category/category.dart';
import 'package:ecolog/application_model/mock/provider/firestore/mock_firestore.dart';

import 'mock/mock.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  test('正常な匿名認証', () async {
    final container = ProviderContainer(
      overrides: [
        ecologAuthProvider.overrideWithProvider(Provider((_) => MockSuccessAnonymousProvider())),
        categoryDaoProvider.overrideWithProvider(Provider((_) => CategoryDaoMock())),
      ]
    );
    final target = container.read(startControllerProvider.notifier);

    expect(target.debugState.exception, null);
    expect(target.debugState.isLoading, false);
    await target.anonymousSignIn();
    expect(target.debugState.exception, null);
    expect(target.debugState.isLoading, false);
  });

  test('例外な匿名認証', () async {
    final container = ProviderContainer(
        overrides: [
          ecologAuthProvider.overrideWithProvider(Provider((_) => MockExceptionAnonymousProvider()))
        ]
    );
    final target = container.read(startControllerProvider.notifier);

    expect(target.debugState.exception, null);
    expect(target.debugState.isLoading, false);
    await target.anonymousSignIn().catchError((error) {
      expect(target.debugState.exception, FirebaseAuthException(code: 'user-not-found'));
      expect(target.debugState.isLoading, false);
    });
  });
}