import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:ecolog/application_model/firebases/auth/anonymous/anonymous.dart';
import 'package:ecolog/controllers/start/start.dart';

import 'mock/mock.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  test('正常な匿名認証', () async {
    final container = ProviderContainer(
      overrides: [
        anonymousAuthenticationProvider.overrideWithProvider(Provider((_) => MockSuccessAnonymousProvider()))
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
          anonymousAuthenticationProvider.overrideWithProvider(Provider((_) => MockExceptionAnonymousProvider()))
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