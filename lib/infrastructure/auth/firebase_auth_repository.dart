import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_app/core/errors/error_codes.dart';
import 'package:sales_app/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/auth/i_auth_repository.dart';
import 'package:meta/meta.dart';

@LazySingleton(as: IAuthRepository)

/// Repository that wraps the FirebaseAuth service
class FirebaseAuthRepository implements IAuthRepository {
  final FirebaseAuth firebaseAuth;
  final int _timeoutDuration = 10;

  FirebaseAuthRepository({@required this.firebaseAuth});

  @override
  Future<Either<AuthFailure, Unit>> sendRecoverPasswordToEmail(
      {@required String email}) async {
    try {
      await firebaseAuth
          .sendPasswordResetEmail(email: email)
          .timeout(Duration(seconds: _timeoutDuration));
    } on TimeoutException {
      return const Left(AuthFailure.noServerResponse());
    } catch (e, s) {
      return left(
        AuthFailure.unknownError(
          exception: e,
          stackTrace: s,
          message: "Unknown error ocurred! We catched the throwed error"
              " ($e) which is not expected in the sendRecoverPassword method from"
              " the FirebaseAuthRepository.",
          errorCode: ErrorCodes.unexpectedException,
        ),
      );
    }

    return const Right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> trySignIn({
    @required String email,
    @required String password,
  }) async {
    try {
      await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .timeout(Duration(seconds: _timeoutDuration));
    } on FirebaseAuthException catch (e, s) {
      switch (e.code) {
        case 'invalid-email':
          return left(const AuthFailure.invalidEmail());
        case 'user-not-found':
          return left(const AuthFailure.emailNotExists());
        case 'wrong-password':
          return left(const AuthFailure.wrongPassword());
        case 'user-disabled':
          return left(const AuthFailure.userDisabled());
        default:
          return left(
            AuthFailure.unknownError(
              exception: e,
              stackTrace: s,
              message: "Unknown error ocurred! The FirebaseAuthException"
                  " error code (${e.code}) is not contemplated.",
              errorCode: ErrorCodes.unknownFirebaseAuthErrorCode,
            ),
          );
      }
    } on TimeoutException {
      return left(const AuthFailure.noServerResponse());
    } catch (e, s) {
      return left(
        AuthFailure.unknownError(
          exception: e,
          stackTrace: s,
          message: "Unknown error ocurred! We catched the throwed error"
              " ($e) which is not expected in the trySignIn method from"
              " the FirebaseAuthRepository.",
          errorCode: ErrorCodes.unexpectedException,
        ),
      );
    }

    // No errors ocurred
    return right(unit);
  }
}
