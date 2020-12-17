import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_app/domain/auth/i_auth_repository.dart';
import 'package:sales_app/domain/settings/i_settings_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;
  final ISettingRepository _settingRepository;

  AuthBloc(this._authRepository, this._settingRepository)
      : super(const _Waiting());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.when(
      authCheckRequested: () async* {
        final userOption = await _authRepository.signedInUser;
        yield await userOption.fold(
          () => const AuthState.unauthenticated(),
          (user) async {
            final result = await _settingRepository.fetch();
            return result.fold(
              (f) {
                return AuthState.authenticationError(
                  errorMessages: f.defaultErrorMessages,
                );
              },
              (r) => AuthState.authenticated(user),
            );
          },
        );
      },
      signOutRequested: () async* {
        yield const AuthState.waiting();
        await _authRepository.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
