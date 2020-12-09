part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  /// When we don't know if the user is authenticated or not
  const factory AuthState.waiting() = _Waiting;

  /// When the user is successfully authenticated
  const factory AuthState.authenticated(User user) = _Authenticated;

  /// When the user is not signed in
  const factory AuthState.unauthenticated() = _Unauthenticated;
}
