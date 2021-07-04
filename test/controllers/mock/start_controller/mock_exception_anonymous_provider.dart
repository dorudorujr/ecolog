import 'package:firebase_auth/firebase_auth.dart';

import 'package:ecolog/application_model/firebases/auth/ecolog_auth.dart';

class MockExceptionAnonymousProvider implements EcologAuth {
  MockExceptionAnonymousProvider() : super();

  @override
  Future<UserCredential> authentication() async {
    throw FirebaseAuthException(code: 'user-not-found');
  }

  @override
  Future<void> signout() {
    // TODO: implement signout
    throw UnimplementedError();
  }

  @override
  User? getUser() {
    return null;
  }
}