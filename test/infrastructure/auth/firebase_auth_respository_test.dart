import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sales_app/domain/auth/app_user.dart';
import 'package:sales_app/domain/auth/auth_failure.dart';
import 'package:sales_app/infrastructure/auth/firebase_auth_repository.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockUser extends Mock implements User {
  @override
  final String uid;
  @override
  final String displayName;

  MockUser({this.uid, this.displayName});
}

void main() {
  FirebaseAuthRepository authRepository;
  MockFirebaseAuth mockFirebaseAuth;

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    authRepository = FirebaseAuthRepository(firebaseAuth: mockFirebaseAuth);
  });

  group('trySignIn', () {
    const String tValidEmail = 'valid@email.com';
    const String tPassword = 'password';
    const String tInvalidEmail = 'not#a.valid_email:com';

    test(
      'should sign in a user with a email & password when correct',
      () async {
        // arrange
        when(mockFirebaseAuth.signInWithEmailAndPassword(
          email: anyNamed("email"),
          password: anyNamed("password"),
        )).thenAnswer((_) => Future<UserCredential>(() => null));

        // act
        final result = await authRepository.trySignIn(
            email: tValidEmail, password: tPassword);

        // assert
        verify(mockFirebaseAuth.signInWithEmailAndPassword(
          email: tValidEmail,
          password: tPassword,
        )).called(1);

        expect(result, equals(const Right(unit)));
      },
    );

    test(
      'should return InvalidEmail Failure when invalid email',
      () async {
        // arrange
        when(mockFirebaseAuth.signInWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(
                FirebaseAuthException(code: 'invalid-email', message: ""));
        // act
        final result = await authRepository.trySignIn(
            email: tInvalidEmail, password: tPassword);
        // assert

        verify(mockFirebaseAuth.signInWithEmailAndPassword(
          email: tInvalidEmail,
          password: tPassword,
        )).called(1);

        expect(result, equals(const Left(AuthFailure.invalidEmail())));
      },
    );

    test(
      "should return EmailNotExists Failure when the provided email isn't registered",
      () async {
        // arrange
        when(mockFirebaseAuth.signInWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(
                FirebaseAuthException(code: 'user-not-found', message: ""));
        // act
        final result = await authRepository.trySignIn(
            email: tValidEmail, password: tPassword);
        // assert

        verify(mockFirebaseAuth.signInWithEmailAndPassword(
          email: tValidEmail,
          password: tPassword,
        )).called(1);

        expect(result, equals(const Left(AuthFailure.emailNotExists())));
      },
    );

    test(
      "should return WrongPassword Failure when the password is wrong",
      () async {
        // arrange
        when(mockFirebaseAuth.signInWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(
                FirebaseAuthException(code: 'wrong-password', message: ""));
        // act
        final result = await authRepository.trySignIn(
            email: tValidEmail, password: tPassword);
        // assert

        verify(mockFirebaseAuth.signInWithEmailAndPassword(
          email: tValidEmail,
          password: tPassword,
        )).called(1);

        expect(result, equals(const Left(AuthFailure.wrongPassword())));
      },
    );

    test(
      "should return UserDisabled Failure when the user has been disabled",
      () async {
        // arrange
        when(mockFirebaseAuth.signInWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(
                FirebaseAuthException(code: 'user-disabled', message: ""));
        // act
        final result = await authRepository.trySignIn(
            email: tValidEmail, password: tPassword);
        // assert

        verify(mockFirebaseAuth.signInWithEmailAndPassword(
          email: tValidEmail,
          password: tPassword,
        )).called(1);

        expect(result, equals(const Left(AuthFailure.userDisabled())));
      },
    );

    test(
      "should return UnknownError Failure when the error code is not supported",
      () async {
        // arrange
        when(mockFirebaseAuth.signInWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(
                FirebaseAuthException(code: "unsupported-code", message: ''));
        // act
        final result = await authRepository.trySignIn(
            email: tValidEmail, password: tPassword);
        // assert

        verify(mockFirebaseAuth.signInWithEmailAndPassword(
          email: tValidEmail,
          password: tPassword,
        )).called(1);

        expect(
          result.fold((l) => l, (r) => r),
          isA<UnknownError>(),
        );
      },
    );

    test(
      "should return UnknownError Failure when an unexpected exception is thrown",
      () async {
        // arrange
        when(mockFirebaseAuth.signInWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(Exception());
        // act
        final result = await authRepository.trySignIn(
            email: tValidEmail, password: tPassword);
        // assert

        verify(mockFirebaseAuth.signInWithEmailAndPassword(
          email: tValidEmail,
          password: tPassword,
        )).called(1);

        expect(
          result.fold((l) => l, (r) => r),
          isA<UnknownError>(),
        );
      },
    );

    test(
      "should return NoServerResponse Failure when the connection is slow",
      () async {
        // arrange
        when(mockFirebaseAuth.signInWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenAnswer((_) => Future.delayed(const Duration(seconds: 11)));

        // act
        final result = await authRepository.trySignIn(
            email: tValidEmail, password: tPassword);

        // assert
        verify(mockFirebaseAuth.signInWithEmailAndPassword(
          email: tValidEmail,
          password: tPassword,
        )).called(1);

        expect(result, left(const AuthFailure.noServerResponse()));
      },
    );
  });

  group('sendRecoverPasswordToEmail', () {
    const String tValidEmail = 'valid@email.com';

    test(
      'should send email to user',
      () async {
        // arrange
        when(mockFirebaseAuth.sendPasswordResetEmail(
          email: anyNamed("email"),
        )).thenAnswer((_) => Future<void>(() => unit));

        // act
        final result =
            await authRepository.sendRecoverPasswordToEmail(email: tValidEmail);

        // assert
        verify(
          mockFirebaseAuth.sendPasswordResetEmail(email: tValidEmail),
        ).called(1);

        expect(result, right(unit));
      },
    );

    test(
      'should return UnknownError Failure when an unexpected Exception is thrown',
      () async {
        // arrange
        when(mockFirebaseAuth.sendPasswordResetEmail(email: anyNamed("email")))
            .thenThrow(Exception());
        // act
        final result =
            await authRepository.sendRecoverPasswordToEmail(email: tValidEmail);

        // assert
        verify(
          mockFirebaseAuth.sendPasswordResetEmail(email: tValidEmail),
        ).called(1);

        expect(
          result.fold((l) => l, (r) => r),
          isA<UnknownError>(),
        );
      },
    );

    test(
      'should return NoServerReponse Failure when the connection is too slow',
      () async {
        // arrange
        when(mockFirebaseAuth.sendPasswordResetEmail(email: anyNamed("email")))
            .thenAnswer(
          (_) => Future.delayed(
            const Duration(seconds: 11),
          ),
        );
        // act
        final result =
            await authRepository.sendRecoverPasswordToEmail(email: tValidEmail);

        // assert
        verify(
          mockFirebaseAuth.sendPasswordResetEmail(email: tValidEmail),
        ).called(1);

        expect(result, left(const AuthFailure.noServerResponse()));
      },
    );
  });

  group('getSignedInUser', () {
    const tUid = "abc";
    const tDisplayName = "Name";
    test(
      'should return the current signed in user',
      () async {
        // arrange
        when(mockFirebaseAuth.currentUser).thenReturn(MockUser(
          uid: tUid,
          displayName: tDisplayName,
        ));

        // act
        final result = authRepository.getSignedInUser();

        // assert
        verify(mockFirebaseAuth.currentUser).called(1);
        expect(
          result,
          right(some(const AppUser(
            id: tUid,
            name: tDisplayName,
          ))),
        );
      },
    );

    test(
      'should return none when no user is signed in',
      () async {
        // arrange
        when(mockFirebaseAuth.currentUser).thenReturn(null);

        // act
        final result = authRepository.getSignedInUser();

        // assert
        verify(mockFirebaseAuth.currentUser).called(1);
        expect(result, right(none()));
      },
    );

    test(
      'should return Unknown Error Failure when an exception is thrown',
      () async {
        // arrange
        when(mockFirebaseAuth.currentUser).thenThrow(Exception());

        // act
        final result = authRepository.getSignedInUser();

        // assert
        verify(mockFirebaseAuth.currentUser).called(1);
        expect(
          result.fold(id, id),
          isA<UnknownError>(),
        );
      },
    );
  });

  group('signOut', () {
    test(
      'should sign out the current signed in user',
      () async {
        // arrange
        when(mockFirebaseAuth.signOut())
            .thenAnswer((_) => Future<void>.value());

        // act
        final result = await authRepository.signOut();

        // assert
        verify(mockFirebaseAuth.signOut()).called(1);
        expect(result, right(unit));
      },
    );

    test(
      'should return Unknown Error Failure when an exception is thrown',
      () async {
        // arrange
        when(mockFirebaseAuth.signOut()).thenThrow(Exception());

        // act
        final result = await authRepository.signOut();

        // assert
        verify(mockFirebaseAuth.signOut()).called(1);
        expect(
          result.fold(id, id),
          isA<UnknownError>(),
        );
      },
    );
  });
}
