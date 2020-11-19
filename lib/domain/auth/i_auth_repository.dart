import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:sales_app/domain/auth/app_user.dart';
import 'package:sales_app/domain/auth/auth_failure.dart';

abstract class IAuthRepository {
  /// Returns the currently signed in user
  Either<AuthFailure, Option<AppUser>> getSignedInUser();

  /// Tries to sign in with the given email & password
  Future<Either<AuthFailure, Unit>> trySignIn({
    @required String email,
    @required String password,
  });

  /// Sends an email to recover the user password to the specified email
  Future<Either<AuthFailure, Unit>> sendRecoverPasswordToEmail({
    @required String email,
  });

  /// Signs out the currently signed in user
  Future<Either<AuthFailure, Unit>> signOut();
}
