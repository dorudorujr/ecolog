import 'package:ecolog/util/const/string/const_string.dart';

enum FirebaseAuthExceptionType {
  Undefined,
  TooManyRequests,
  UserNotFound,
  NetworkRequestFailed,
}

extension FirebaseAuthExceptionTypeExt on FirebaseAuthExceptionType {
  String get message {
    switch(this) {
      case FirebaseAuthExceptionType.Undefined:
        return ConstString.commonErrorTitle;
      case FirebaseAuthExceptionType.TooManyRequests:
        return ConstString.firebaseErrorTooManyRequests;
      case FirebaseAuthExceptionType.UserNotFound:
        return ConstString.firebaseErrorUserNotFound;
      case FirebaseAuthExceptionType.NetworkRequestFailed:
        return ConstString.commonNetworkErrorTitle;
    }
  }
}