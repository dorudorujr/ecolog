import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/annotations.dart';

import 'package:ecolog/application_model/firebases/auth/anonymous/anonymous.dart';
import 'mock_success_anonymous_provider.mocks.dart';

@GenerateMocks([UserCredential])
class MockSuccessAnonymousProvider implements AnonymousAuthentication {
  MockSuccessAnonymousProvider() : super();

  @override
  Future<UserCredential> authentication() async {
    return MockUserCredential();
  }

  @override
  Future<void> signout() {
    // TODO: implement signout
    throw UnimplementedError();
  }
}