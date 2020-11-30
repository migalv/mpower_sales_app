import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sales_app/application/auth/login/login_bloc.dart';
import 'package:sales_app/domain/auth/auth_failure.dart';
import 'package:sales_app/domain/auth/i_auth_repository.dart';
import 'package:bloc_test/bloc_test.dart';

class MockAuthRepository extends Mock implements IAuthRepository {}

void main() {
  LoginBloc loginBloc;
  MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    loginBloc = LoginBloc(mockAuthRepository);
  });

  group('LoginBloc', () {
    const tValidEmail = "valid@email.com";
    const tPassword = "password";
    const tInvalidEmail = "an invalid email";

    test('should initialize with the initial state', () {
      expectLater(loginBloc.state, const LoginState.initial());
    });

    blocTest(
      'should sign in user when correct SignIn Event is added',
      build: () {
        when(mockAuthRepository.trySignIn(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenAnswer((_) => Future.value(const Right(unit)));
        return loginBloc;
      },
      act: (bloc) => bloc.add(const LoginEvent.signInButtonPressed(
          email: tValidEmail, password: tPassword)),
      expect: const [
        LoginState.signInInProgress(),
        LoginState.signInSuccess(),
      ],
      verify: (loginBloc) => verify(mockAuthRepository.trySignIn(
              email: tValidEmail, password: tPassword))
          .called(1),
    );

    blocTest(
      'should emit Failure State when any AuthFailure is responded by the repository',
      build: () {
        when(
          mockAuthRepository.trySignIn(
            email: anyNamed("email"),
            password: anyNamed("password"),
          ),
        ).thenAnswer(
          (_) => Future.value(const Left(AuthFailure.invalidEmail())),
        );
        return loginBloc;
      },
      act: (bloc) => bloc.add(const LoginEvent.signInButtonPressed(
          email: tInvalidEmail, password: tPassword)),
      expect: [
        const LoginState.signInInProgress(),
        isA<LoginSignInFailure>(),
        const LoginState.initial(),
      ],
      verify: (loginBloc) => verify(mockAuthRepository.trySignIn(
              email: tInvalidEmail, password: tPassword))
          .called(1),
    );

    blocTest(
      'should send recover password email when ForgotPassword Event is added',
      build: () {
        when(mockAuthRepository.sendRecoverPasswordToEmail(
                email: anyNamed("email")))
            .thenAnswer(
          (_) => Future.value(const Right(unit)),
        );
        return loginBloc;
      },
      act: (bloc) => bloc.add(
          const LoginEvent.forgotPasswordButtonPressed(email: tValidEmail)),
      expect: const [
        LoginState.recoverPasswordSuccess(),
        LoginState.initial(),
      ],
      verify: (loginBloc) =>
          verify(mockAuthRepository.sendRecoverPasswordToEmail(
        email: tValidEmail,
      )).called(1),
    );

    blocTest(
      'should emit Failure State when any AuthFailure is responded by the repository',
      build: () {
        when(mockAuthRepository.sendRecoverPasswordToEmail(
                email: anyNamed("email")))
            .thenAnswer(
          (_) => Future.value(const Left(AuthFailure.emailNotExists())),
        );
        return loginBloc;
      },
      act: (bloc) => bloc.add(
          const LoginEvent.forgotPasswordButtonPressed(email: tValidEmail)),
      expect: [
        isA<LoginRecoverPasswordFailure>(),
        const LoginState.initial(),
      ],
      verify: (loginBloc) =>
          verify(mockAuthRepository.sendRecoverPasswordToEmail(
        email: tValidEmail,
      )).called(1),
    );
  });
}
