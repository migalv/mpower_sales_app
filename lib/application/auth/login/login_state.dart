part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginInitial;
  const factory LoginState.signInInProgress() = LoginSignInInProgress;
  const factory LoginState.signInSuccess() = LoginSignInSuccess;
  const factory LoginState.signInFailure({
    @required AuthFailure failure,
  }) = LoginSignInFailure;
  const factory LoginState.recoverPasswordSuccess() =
      LoginRecoverPasswordSuccess;
  const factory LoginState.recoverPasswordFailure({
    @required AuthFailure failure,
  }) = LoginRecoverPasswordFailure;
}
