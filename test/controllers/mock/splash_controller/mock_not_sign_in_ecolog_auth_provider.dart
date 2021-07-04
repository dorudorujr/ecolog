import 'package:firebase_auth/firebase_auth.dart';

import 'package:ecolog/application_model/firebases/auth/ecolog_auth.dart';

class MockAutoSignInEcologAuthProviderProvider implements EcologAuth {
  MockAutoSignInEcologAuthProviderProvider() : super();

  @override
  Future<UserCredential> authentication() async {
    /// 使用しないのでExceptionを投げる
    throw FirebaseAuthException(code: 'user-not-found');
  }

  @override
  Future<void> signout() {
    throw UnimplementedError();
  }

  @override
  User? getUser() {
    return null;
  }
}