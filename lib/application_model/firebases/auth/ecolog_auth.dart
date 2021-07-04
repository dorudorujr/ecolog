import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ecologAuthProvider = Provider((_) => EcologAuth());

class EcologAuth {
  EcologAuth() : super();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserCredential> authentication() async {
    return _firebaseAuth.signInAnonymously();
  }

  Future<void> signout() async {
    await _firebaseAuth.signOut();
  }

  User? getUser() {
    return _firebaseAuth.currentUser;
  }
}