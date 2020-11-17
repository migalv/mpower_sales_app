import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.unknownError({
    exception,
    stackTrace,
    String message,
    int errorCode,
  }) = UnknownError;
  const factory AuthFailure.emailNotExists() = EmailNotExists;
  const factory AuthFailure.wrongPassword() = WrongPassword;
  const factory AuthFailure.invalidEmail() = InvalidEmail;
  const factory AuthFailure.userDisabled() = UserDisabled;
  const factory AuthFailure.noServerResponse() = NoServerResponse;
}
