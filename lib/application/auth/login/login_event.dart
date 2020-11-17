part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.signInButtonPressed({
    @required String email,
    @required String password,
  }) = SignInButtonPressed;

  const factory LoginEvent.forgotPasswordButtonPressed({
    @required String email,
  }) = ForgotPasswordButtonPressed;
}
