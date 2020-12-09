import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sales_app/domain/auth/auth_failure.dart';
import 'package:sales_app/domain/auth/i_auth_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthRepository _authRepository;

  LoginBloc(this._authRepository) : super(const LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.map(
      signInButtonPressed: (event) async* {
        yield const LoginState.signInInProgress();

        final result = await _authRepository.trySignIn(
          email: event.email,
          password: event.password,
        );

        yield* result.fold(
          (l) async* {
            yield LoginState.signInFailure(failure: l);
            yield const LoginState.initial();
          },
          (r) async* {
            yield const LoginState.signInSuccess();
          },
        );
      },
      forgotPasswordButtonPressed: (event) async* {
        if (event.email.isEmpty) {
          yield const LoginState.recoverPasswordFailure(
              failure: AuthFailure.emailNotExists());
          yield const LoginState.initial();
          return;
        }

        final result = await _authRepository.sendRecoverPasswordToEmail(
            email: event.email);

        yield* result.fold(
          (l) async* {
            yield LoginState.recoverPasswordFailure(failure: l);
            yield const LoginState.initial();
          },
          (r) async* {
            yield const LoginState.recoverPasswordSuccess();
            yield const LoginState.initial();
          },
        );
      },
    );
  }
}
