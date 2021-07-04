import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/annotations.dart';

import 'package:ecolog/application_model/firebases/auth/ecolog_auth.dart';
import 'mock_auto_sign_in_ecolog_auth_provider.mocks.dart';

@GenerateMocks([UserCredential, User])
class MockAutoSignInEcologAuthProviderProvider implements EcologAuth {
  MockAutoSignInEcologAuthProviderProvider() : super();

  @override
  Future<UserCredential> authentication() async {
    return MockUserCredential();
  }

  @override
  Future<void> signout() {
    throw UnimplementedError();
  }

  @override
  User? getUser() {
    return MockUser();
  }
}