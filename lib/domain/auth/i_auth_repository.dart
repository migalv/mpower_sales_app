import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:sales_app/domain/auth/auth_failure.dart';

abstract class IAuthRepository {
  /// Tries to sign in with the given email & password
  Future<Either<AuthFailure, Unit>> trySignIn({
    @required String email,
    @required String password,
  });

  /// Sends an email to recover the user password to the specified email
  Future<Either<AuthFailure, Unit>> sendRecoverPasswordToEmail({
    @required String email,
  });

  /// Returns the signed in user. If null option will be [none]
  Future<Option<User>> get signedInUser;

  /// Will sign out the currently logged in user
  Future<void> signOut();
}
