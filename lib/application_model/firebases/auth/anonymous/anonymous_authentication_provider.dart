import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final anonymousAuthenticationProvider = Provider((_) => AnonymousAuthentication());

class AnonymousAuthentication {
  AnonymousAuthentication() : super();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserCredential> authentication() async {
    return _firebaseAuth.signInAnonymously();
  }

  Future<void> signout() async {
    await _firebaseAuth.signOut();
  }
}