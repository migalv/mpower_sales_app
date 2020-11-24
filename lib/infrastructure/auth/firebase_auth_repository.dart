import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_app/domain/auth/app_user.dart';
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
        ),
      );
    }

    // No errors ocurred
    return right(unit);
  }

  @override
  Either<AuthFailure, Option<AppUser>> getSignedInUser() {
    User firebaseUser;
    try {
      firebaseUser = firebaseAuth.currentUser;
    } on Exception catch (e, s) {
      return left(AuthFailure.unknownError(
        exception: e,
        stackTrace: s,
        message: "An unknown error ocurred when trying to get the signed in "
            "Firebase user.",
      ));
    }

    AppUser appUser;

    if (firebaseUser != null) {
      appUser = AppUser(
        id: firebaseUser.uid,
        name: firebaseUser.displayName,
      );
    }

    return right(optionOf(appUser));
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await firebaseAuth.signOut();
    } on Exception catch (e, s) {
      return left(AuthFailure.unknownError(
        exception: e,
        stackTrace: s,
        message: "An unknown error ocurred when trying to sign out the current "
            "Firebase user.",
      ));
    }

    return right(unit);
  }
}
