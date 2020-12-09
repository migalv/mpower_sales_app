// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  UnknownError unknownError(
      {@required Exception exception,
      @required StackTrace stackTrace,
      String message,
      int errorCode}) {
    return UnknownError(
      exception: exception,
      stackTrace: stackTrace,
      message: message,
      errorCode: errorCode,
    );
  }

// ignore: unused_element
  EmailNotExists emailNotExists() {
    return const EmailNotExists();
  }

// ignore: unused_element
  WrongPassword wrongPassword() {
    return const WrongPassword();
  }

// ignore: unused_element
  InvalidEmail invalidEmail() {
    return const InvalidEmail();
  }

// ignore: unused_element
  UserDisabled userDisabled() {
    return const UserDisabled();
  }

// ignore: unused_element
  NoServerResponse noServerResponse() {
    return const NoServerResponse();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult unknownError(Exception exception, StackTrace stackTrace,
            String message, int errorCode),
    @required TResult emailNotExists(),
    @required TResult wrongPassword(),
    @required TResult invalidEmail(),
    @required TResult userDisabled(),
    @required TResult noServerResponse(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unknownError(Exception exception, StackTrace stackTrace,
        String message, int errorCode),
    TResult emailNotExists(),
    TResult wrongPassword(),
    TResult invalidEmail(),
    TResult userDisabled(),
    TResult noServerResponse(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unknownError(UnknownError value),
    @required TResult emailNotExists(EmailNotExists value),
    @required TResult wrongPassword(WrongPassword value),
    @required TResult invalidEmail(InvalidEmail value),
    @required TResult userDisabled(UserDisabled value),
    @required TResult noServerResponse(NoServerResponse value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unknownError(UnknownError value),
    TResult emailNotExists(EmailNotExists value),
    TResult wrongPassword(WrongPassword value),
    TResult invalidEmail(InvalidEmail value),
    TResult userDisabled(UserDisabled value),
    TResult noServerResponse(NoServerResponse value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $UnknownErrorCopyWith<$Res> {
  factory $UnknownErrorCopyWith(
          UnknownError value, $Res Function(UnknownError) then) =
      _$UnknownErrorCopyWithImpl<$Res>;
  $Res call(
      {Exception exception,
      StackTrace stackTrace,
      String message,
      int errorCode});
}

/// @nodoc
class _$UnknownErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $UnknownErrorCopyWith<$Res> {
  _$UnknownErrorCopyWithImpl(
      UnknownError _value, $Res Function(UnknownError) _then)
      : super(_value, (v) => _then(v as UnknownError));

  @override
  UnknownError get _value => super._value as UnknownError;

  @override
  $Res call({
    Object exception = freezed,
    Object stackTrace = freezed,
    Object message = freezed,
    Object errorCode = freezed,
  }) {
    return _then(UnknownError(
      exception:
          exception == freezed ? _value.exception : exception as Exception,
      stackTrace:
          stackTrace == freezed ? _value.stackTrace : stackTrace as StackTrace,
      message: message == freezed ? _value.message : message as String,
      errorCode: errorCode == freezed ? _value.errorCode : errorCode as int,
    ));
  }
}

/// @nodoc
class _$UnknownError implements UnknownError {
  const _$UnknownError(
      {@required this.exception,
      @required this.stackTrace,
      this.message,
      this.errorCode})
      : assert(exception != null),
        assert(stackTrace != null);

  @override
  final Exception exception;
  @override
  final StackTrace stackTrace;
  @override
  final String message;
  @override
  final int errorCode;

  @override
  String toString() {
    return 'AuthFailure.unknownError(exception: $exception, stackTrace: $stackTrace, message: $message, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnknownError &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exception) ^
      const DeepCollectionEquality().hash(stackTrace) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(errorCode);

  @override
  $UnknownErrorCopyWith<UnknownError> get copyWith =>
      _$UnknownErrorCopyWithImpl<UnknownError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult unknownError(Exception exception, StackTrace stackTrace,
            String message, int errorCode),
    @required TResult emailNotExists(),
    @required TResult wrongPassword(),
    @required TResult invalidEmail(),
    @required TResult userDisabled(),
    @required TResult noServerResponse(),
  }) {
    assert(unknownError != null);
    assert(emailNotExists != null);
    assert(wrongPassword != null);
    assert(invalidEmail != null);
    assert(userDisabled != null);
    assert(noServerResponse != null);
    return unknownError(exception, stackTrace, message, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unknownError(Exception exception, StackTrace stackTrace,
        String message, int errorCode),
    TResult emailNotExists(),
    TResult wrongPassword(),
    TResult invalidEmail(),
    TResult userDisabled(),
    TResult noServerResponse(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unknownError != null) {
      return unknownError(exception, stackTrace, message, errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unknownError(UnknownError value),
    @required TResult emailNotExists(EmailNotExists value),
    @required TResult wrongPassword(WrongPassword value),
    @required TResult invalidEmail(InvalidEmail value),
    @required TResult userDisabled(UserDisabled value),
    @required TResult noServerResponse(NoServerResponse value),
  }) {
    assert(unknownError != null);
    assert(emailNotExists != null);
    assert(wrongPassword != null);
    assert(invalidEmail != null);
    assert(userDisabled != null);
    assert(noServerResponse != null);
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unknownError(UnknownError value),
    TResult emailNotExists(EmailNotExists value),
    TResult wrongPassword(WrongPassword value),
    TResult invalidEmail(InvalidEmail value),
    TResult userDisabled(UserDisabled value),
    TResult noServerResponse(NoServerResponse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnknownError implements AuthFailure {
  const factory UnknownError(
      {@required Exception exception,
      @required StackTrace stackTrace,
      String message,
      int errorCode}) = _$UnknownError;

  Exception get exception;
  StackTrace get stackTrace;
  String get message;
  int get errorCode;
  $UnknownErrorCopyWith<UnknownError> get copyWith;
}

/// @nodoc
abstract class $EmailNotExistsCopyWith<$Res> {
  factory $EmailNotExistsCopyWith(
          EmailNotExists value, $Res Function(EmailNotExists) then) =
      _$EmailNotExistsCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailNotExistsCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailNotExistsCopyWith<$Res> {
  _$EmailNotExistsCopyWithImpl(
      EmailNotExists _value, $Res Function(EmailNotExists) _then)
      : super(_value, (v) => _then(v as EmailNotExists));

  @override
  EmailNotExists get _value => super._value as EmailNotExists;
}

/// @nodoc
class _$EmailNotExists implements EmailNotExists {
  const _$EmailNotExists();

  @override
  String toString() {
    return 'AuthFailure.emailNotExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailNotExists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult unknownError(Exception exception, StackTrace stackTrace,
            String message, int errorCode),
    @required TResult emailNotExists(),
    @required TResult wrongPassword(),
    @required TResult invalidEmail(),
    @required TResult userDisabled(),
    @required TResult noServerResponse(),
  }) {
    assert(unknownError != null);
    assert(emailNotExists != null);
    assert(wrongPassword != null);
    assert(invalidEmail != null);
    assert(userDisabled != null);
    assert(noServerResponse != null);
    return emailNotExists();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unknownError(Exception exception, StackTrace stackTrace,
        String message, int errorCode),
    TResult emailNotExists(),
    TResult wrongPassword(),
    TResult invalidEmail(),
    TResult userDisabled(),
    TResult noServerResponse(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailNotExists != null) {
      return emailNotExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unknownError(UnknownError value),
    @required TResult emailNotExists(EmailNotExists value),
    @required TResult wrongPassword(WrongPassword value),
    @required TResult invalidEmail(InvalidEmail value),
    @required TResult userDisabled(UserDisabled value),
    @required TResult noServerResponse(NoServerResponse value),
  }) {
    assert(unknownError != null);
    assert(emailNotExists != null);
    assert(wrongPassword != null);
    assert(invalidEmail != null);
    assert(userDisabled != null);
    assert(noServerResponse != null);
    return emailNotExists(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unknownError(UnknownError value),
    TResult emailNotExists(EmailNotExists value),
    TResult wrongPassword(WrongPassword value),
    TResult invalidEmail(InvalidEmail value),
    TResult userDisabled(UserDisabled value),
    TResult noServerResponse(NoServerResponse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailNotExists != null) {
      return emailNotExists(this);
    }
    return orElse();
  }
}

abstract class EmailNotExists implements AuthFailure {
  const factory EmailNotExists() = _$EmailNotExists;
}

/// @nodoc
abstract class $WrongPasswordCopyWith<$Res> {
  factory $WrongPasswordCopyWith(
          WrongPassword value, $Res Function(WrongPassword) then) =
      _$WrongPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$WrongPasswordCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $WrongPasswordCopyWith<$Res> {
  _$WrongPasswordCopyWithImpl(
      WrongPassword _value, $Res Function(WrongPassword) _then)
      : super(_value, (v) => _then(v as WrongPassword));

  @override
  WrongPassword get _value => super._value as WrongPassword;
}

/// @nodoc
class _$WrongPassword implements WrongPassword {
  const _$WrongPassword();

  @override
  String toString() {
    return 'AuthFailure.wrongPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WrongPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult unknownError(Exception exception, StackTrace stackTrace,
            String message, int errorCode),
    @required TResult emailNotExists(),
    @required TResult wrongPassword(),
    @required TResult invalidEmail(),
    @required TResult userDisabled(),
    @required TResult noServerResponse(),
  }) {
    assert(unknownError != null);
    assert(emailNotExists != null);
    assert(wrongPassword != null);
    assert(invalidEmail != null);
    assert(userDisabled != null);
    assert(noServerResponse != null);
    return wrongPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unknownError(Exception exception, StackTrace stackTrace,
        String message, int errorCode),
    TResult emailNotExists(),
    TResult wrongPassword(),
    TResult invalidEmail(),
    TResult userDisabled(),
    TResult noServerResponse(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wrongPassword != null) {
      return wrongPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unknownError(UnknownError value),
    @required TResult emailNotExists(EmailNotExists value),
    @required TResult wrongPassword(WrongPassword value),
    @required TResult invalidEmail(InvalidEmail value),
    @required TResult userDisabled(UserDisabled value),
    @required TResult noServerResponse(NoServerResponse value),
  }) {
    assert(unknownError != null);
    assert(emailNotExists != null);
    assert(wrongPassword != null);
    assert(invalidEmail != null);
    assert(userDisabled != null);
    assert(noServerResponse != null);
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unknownError(UnknownError value),
    TResult emailNotExists(EmailNotExists value),
    TResult wrongPassword(WrongPassword value),
    TResult invalidEmail(InvalidEmail value),
    TResult userDisabled(UserDisabled value),
    TResult noServerResponse(NoServerResponse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class WrongPassword implements AuthFailure {
  const factory WrongPassword() = _$WrongPassword;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<$Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail value, $Res Function(InvalidEmail) then) =
      _$InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailCopyWith<$Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail _value, $Res Function(InvalidEmail) _then)
      : super(_value, (v) => _then(v as InvalidEmail));

  @override
  InvalidEmail get _value => super._value as InvalidEmail;
}

/// @nodoc
class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail();

  @override
  String toString() {
    return 'AuthFailure.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult unknownError(Exception exception, StackTrace stackTrace,
            String message, int errorCode),
    @required TResult emailNotExists(),
    @required TResult wrongPassword(),
    @required TResult invalidEmail(),
    @required TResult userDisabled(),
    @required TResult noServerResponse(),
  }) {
    assert(unknownError != null);
    assert(emailNotExists != null);
    assert(wrongPassword != null);
    assert(invalidEmail != null);
    assert(userDisabled != null);
    assert(noServerResponse != null);
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unknownError(Exception exception, StackTrace stackTrace,
        String message, int errorCode),
    TResult emailNotExists(),
    TResult wrongPassword(),
    TResult invalidEmail(),
    TResult userDisabled(),
    TResult noServerResponse(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unknownError(UnknownError value),
    @required TResult emailNotExists(EmailNotExists value),
    @required TResult wrongPassword(WrongPassword value),
    @required TResult invalidEmail(InvalidEmail value),
    @required TResult userDisabled(UserDisabled value),
    @required TResult noServerResponse(NoServerResponse value),
  }) {
    assert(unknownError != null);
    assert(emailNotExists != null);
    assert(wrongPassword != null);
    assert(invalidEmail != null);
    assert(userDisabled != null);
    assert(noServerResponse != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unknownError(UnknownError value),
    TResult emailNotExists(EmailNotExists value),
    TResult wrongPassword(WrongPassword value),
    TResult invalidEmail(InvalidEmail value),
    TResult userDisabled(UserDisabled value),
    TResult noServerResponse(NoServerResponse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements AuthFailure {
  const factory InvalidEmail() = _$InvalidEmail;
}

/// @nodoc
abstract class $UserDisabledCopyWith<$Res> {
  factory $UserDisabledCopyWith(
          UserDisabled value, $Res Function(UserDisabled) then) =
      _$UserDisabledCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDisabledCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $UserDisabledCopyWith<$Res> {
  _$UserDisabledCopyWithImpl(
      UserDisabled _value, $Res Function(UserDisabled) _then)
      : super(_value, (v) => _then(v as UserDisabled));

  @override
  UserDisabled get _value => super._value as UserDisabled;
}

/// @nodoc
class _$UserDisabled implements UserDisabled {
  const _$UserDisabled();

  @override
  String toString() {
    return 'AuthFailure.userDisabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult unknownError(Exception exception, StackTrace stackTrace,
            String message, int errorCode),
    @required TResult emailNotExists(),
    @required TResult wrongPassword(),
    @required TResult invalidEmail(),
    @required TResult userDisabled(),
    @required TResult noServerResponse(),
  }) {
    assert(unknownError != null);
    assert(emailNotExists != null);
    assert(wrongPassword != null);
    assert(invalidEmail != null);
    assert(userDisabled != null);
    assert(noServerResponse != null);
    return userDisabled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unknownError(Exception exception, StackTrace stackTrace,
        String message, int errorCode),
    TResult emailNotExists(),
    TResult wrongPassword(),
    TResult invalidEmail(),
    TResult userDisabled(),
    TResult noServerResponse(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDisabled != null) {
      return userDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unknownError(UnknownError value),
    @required TResult emailNotExists(EmailNotExists value),
    @required TResult wrongPassword(WrongPassword value),
    @required TResult invalidEmail(InvalidEmail value),
    @required TResult userDisabled(UserDisabled value),
    @required TResult noServerResponse(NoServerResponse value),
  }) {
    assert(unknownError != null);
    assert(emailNotExists != null);
    assert(wrongPassword != null);
    assert(invalidEmail != null);
    assert(userDisabled != null);
    assert(noServerResponse != null);
    return userDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unknownError(UnknownError value),
    TResult emailNotExists(EmailNotExists value),
    TResult wrongPassword(WrongPassword value),
    TResult invalidEmail(InvalidEmail value),
    TResult userDisabled(UserDisabled value),
    TResult noServerResponse(NoServerResponse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDisabled != null) {
      return userDisabled(this);
    }
    return orElse();
  }
}

abstract class UserDisabled implements AuthFailure {
  const factory UserDisabled() = _$UserDisabled;
}

/// @nodoc
abstract class $NoServerResponseCopyWith<$Res> {
  factory $NoServerResponseCopyWith(
          NoServerResponse value, $Res Function(NoServerResponse) then) =
      _$NoServerResponseCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoServerResponseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $NoServerResponseCopyWith<$Res> {
  _$NoServerResponseCopyWithImpl(
      NoServerResponse _value, $Res Function(NoServerResponse) _then)
      : super(_value, (v) => _then(v as NoServerResponse));

  @override
  NoServerResponse get _value => super._value as NoServerResponse;
}

/// @nodoc
class _$NoServerResponse implements NoServerResponse {
  const _$NoServerResponse();

  @override
  String toString() {
    return 'AuthFailure.noServerResponse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoServerResponse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult unknownError(Exception exception, StackTrace stackTrace,
            String message, int errorCode),
    @required TResult emailNotExists(),
    @required TResult wrongPassword(),
    @required TResult invalidEmail(),
    @required TResult userDisabled(),
    @required TResult noServerResponse(),
  }) {
    assert(unknownError != null);
    assert(emailNotExists != null);
    assert(wrongPassword != null);
    assert(invalidEmail != null);
    assert(userDisabled != null);
    assert(noServerResponse != null);
    return noServerResponse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unknownError(Exception exception, StackTrace stackTrace,
        String message, int errorCode),
    TResult emailNotExists(),
    TResult wrongPassword(),
    TResult invalidEmail(),
    TResult userDisabled(),
    TResult noServerResponse(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noServerResponse != null) {
      return noServerResponse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unknownError(UnknownError value),
    @required TResult emailNotExists(EmailNotExists value),
    @required TResult wrongPassword(WrongPassword value),
    @required TResult invalidEmail(InvalidEmail value),
    @required TResult userDisabled(UserDisabled value),
    @required TResult noServerResponse(NoServerResponse value),
  }) {
    assert(unknownError != null);
    assert(emailNotExists != null);
    assert(wrongPassword != null);
    assert(invalidEmail != null);
    assert(userDisabled != null);
    assert(noServerResponse != null);
    return noServerResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unknownError(UnknownError value),
    TResult emailNotExists(EmailNotExists value),
    TResult wrongPassword(WrongPassword value),
    TResult invalidEmail(InvalidEmail value),
    TResult userDisabled(UserDisabled value),
    TResult noServerResponse(NoServerResponse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noServerResponse != null) {
      return noServerResponse(this);
    }
    return orElse();
  }
}

abstract class NoServerResponse implements AuthFailure {
  const factory NoServerResponse() = _$NoServerResponse;
}
