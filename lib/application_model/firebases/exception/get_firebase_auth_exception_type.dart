import 'package:firebase_auth/firebase_auth.dart';

import 'firebase_auth_exception_type.dart';

class GetFirebaseAuthExceptionType {
  static FirebaseAuthExceptionType getFirebaseAuthExceptionType(FirebaseAuthException e) {
    print('errorcode:${e.code}');
    switch (e.code) {
      case 'too-many-requests':
        return FirebaseAuthExceptionType.TooManyRequests;
      case 'user-not-found':
        return FirebaseAuthExceptionType.UserNotFound;
      default:
        return FirebaseAuthExceptionType.Undefined;
    }
  }
}