// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

// ignore: unused_element
  SignInButtonPressed signInButtonPressed(
      {@required String email, @required String password}) {
    return SignInButtonPressed(
      email: email,
      password: password,
    );
  }

// ignore: unused_element
  ForgotPasswordButtonPressed forgotPasswordButtonPressed(
      {@required String email}) {
    return ForgotPasswordButtonPressed(
      email: email,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  String get email;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signInButtonPressed(String email, String password),
    @required Result forgotPasswordButtonPressed(String email),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInButtonPressed(String email, String password),
    Result forgotPasswordButtonPressed(String email),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signInButtonPressed(SignInButtonPressed value),
    @required
        Result forgotPasswordButtonPressed(ForgotPasswordButtonPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInButtonPressed(SignInButtonPressed value),
    Result forgotPasswordButtonPressed(ForgotPasswordButtonPressed value),
    @required Result orElse(),
  });

  $LoginEventCopyWith<LoginEvent> get copyWith;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
abstract class $SignInButtonPressedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory $SignInButtonPressedCopyWith(
          SignInButtonPressed value, $Res Function(SignInButtonPressed) then) =
      _$SignInButtonPressedCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInButtonPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $SignInButtonPressedCopyWith<$Res> {
  _$SignInButtonPressedCopyWithImpl(
      SignInButtonPressed _value, $Res Function(SignInButtonPressed) _then)
      : super(_value, (v) => _then(v as SignInButtonPressed));

  @override
  SignInButtonPressed get _value => super._value as SignInButtonPressed;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(SignInButtonPressed(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$SignInButtonPressed implements SignInButtonPressed {
  const _$SignInButtonPressed({@required this.email, @required this.password})
      : assert(email != null),
        assert(password != null);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.signInButtonPressed(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInButtonPressed &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  $SignInButtonPressedCopyWith<SignInButtonPressed> get copyWith =>
      _$SignInButtonPressedCopyWithImpl<SignInButtonPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signInButtonPressed(String email, String password),
    @required Result forgotPasswordButtonPressed(String email),
  }) {
    assert(signInButtonPressed != null);
    assert(forgotPasswordButtonPressed != null);
    return signInButtonPressed(email, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInButtonPressed(String email, String password),
    Result forgotPasswordButtonPressed(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInButtonPressed != null) {
      return signInButtonPressed(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signInButtonPressed(SignInButtonPressed value),
    @required
        Result forgotPasswordButtonPressed(ForgotPasswordButtonPressed value),
  }) {
    assert(signInButtonPressed != null);
    assert(forgotPasswordButtonPressed != null);
    return signInButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInButtonPressed(SignInButtonPressed value),
    Result forgotPasswordButtonPressed(ForgotPasswordButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInButtonPressed != null) {
      return signInButtonPressed(this);
    }
    return orElse();
  }
}

abstract class SignInButtonPressed implements LoginEvent {
  const factory SignInButtonPressed(
      {@required String email,
      @required String password}) = _$SignInButtonPressed;

  @override
  String get email;
  String get password;
  @override
  $SignInButtonPressedCopyWith<SignInButtonPressed> get copyWith;
}

/// @nodoc
abstract class $ForgotPasswordButtonPressedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory $ForgotPasswordButtonPressedCopyWith(
          ForgotPasswordButtonPressed value,
          $Res Function(ForgotPasswordButtonPressed) then) =
      _$ForgotPasswordButtonPressedCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class _$ForgotPasswordButtonPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $ForgotPasswordButtonPressedCopyWith<$Res> {
  _$ForgotPasswordButtonPressedCopyWithImpl(ForgotPasswordButtonPressed _value,
      $Res Function(ForgotPasswordButtonPressed) _then)
      : super(_value, (v) => _then(v as ForgotPasswordButtonPressed));

  @override
  ForgotPasswordButtonPressed get _value =>
      super._value as ForgotPasswordButtonPressed;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(ForgotPasswordButtonPressed(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$ForgotPasswordButtonPressed implements ForgotPasswordButtonPressed {
  const _$ForgotPasswordButtonPressed({@required this.email})
      : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'LoginEvent.forgotPasswordButtonPressed(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ForgotPasswordButtonPressed &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $ForgotPasswordButtonPressedCopyWith<ForgotPasswordButtonPressed>
      get copyWith => _$ForgotPasswordButtonPressedCopyWithImpl<
          ForgotPasswordButtonPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signInButtonPressed(String email, String password),
    @required Result forgotPasswordButtonPressed(String email),
  }) {
    assert(signInButtonPressed != null);
    assert(forgotPasswordButtonPressed != null);
    return forgotPasswordButtonPressed(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInButtonPressed(String email, String password),
    Result forgotPasswordButtonPressed(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (forgotPasswordButtonPressed != null) {
      return forgotPasswordButtonPressed(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signInButtonPressed(SignInButtonPressed value),
    @required
        Result forgotPasswordButtonPressed(ForgotPasswordButtonPressed value),
  }) {
    assert(signInButtonPressed != null);
    assert(forgotPasswordButtonPressed != null);
    return forgotPasswordButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInButtonPressed(SignInButtonPressed value),
    Result forgotPasswordButtonPressed(ForgotPasswordButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (forgotPasswordButtonPressed != null) {
      return forgotPasswordButtonPressed(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordButtonPressed implements LoginEvent {
  const factory ForgotPasswordButtonPressed({@required String email}) =
      _$ForgotPasswordButtonPressed;

  @override
  String get email;
  @override
  $ForgotPasswordButtonPressedCopyWith<ForgotPasswordButtonPressed>
      get copyWith;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  LoginInitial initial() {
    return const LoginInitial();
  }

// ignore: unused_element
  LoginSignInInProgress signInInProgress() {
    return const LoginSignInInProgress();
  }

// ignore: unused_element
  LoginSignInSuccess signInSuccess() {
    return const LoginSignInSuccess();
  }

// ignore: unused_element
  LoginSignInFailure signInFailure({@required AuthFailure failure}) {
    return LoginSignInFailure(
      failure: failure,
    );
  }

// ignore: unused_element
  LoginRecoverPasswordSuccess recoverPasswordSuccess() {
    return const LoginRecoverPasswordSuccess();
  }

// ignore: unused_element
  LoginRecoverPasswordFailure recoverPasswordFailure(
      {@required AuthFailure failure}) {
    return LoginRecoverPasswordFailure(
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signInInProgress(),
    @required Result signInSuccess(),
    @required Result signInFailure(AuthFailure failure),
    @required Result recoverPasswordSuccess(),
    @required Result recoverPasswordFailure(AuthFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signInInProgress(),
    Result signInSuccess(),
    Result signInFailure(AuthFailure failure),
    Result recoverPasswordSuccess(),
    Result recoverPasswordFailure(AuthFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(LoginInitial value),
    @required Result signInInProgress(LoginSignInInProgress value),
    @required Result signInSuccess(LoginSignInSuccess value),
    @required Result signInFailure(LoginSignInFailure value),
    @required Result recoverPasswordSuccess(LoginRecoverPasswordSuccess value),
    @required Result recoverPasswordFailure(LoginRecoverPasswordFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(LoginInitial value),
    Result signInInProgress(LoginSignInInProgress value),
    Result signInSuccess(LoginSignInSuccess value),
    Result signInFailure(LoginSignInFailure value),
    Result recoverPasswordSuccess(LoginRecoverPasswordSuccess value),
    Result recoverPasswordFailure(LoginRecoverPasswordFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class $LoginInitialCopyWith<$Res> {
  factory $LoginInitialCopyWith(
          LoginInitial value, $Res Function(LoginInitial) then) =
      _$LoginInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginInitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginInitialCopyWith<$Res> {
  _$LoginInitialCopyWithImpl(
      LoginInitial _value, $Res Function(LoginInitial) _then)
      : super(_value, (v) => _then(v as LoginInitial));

  @override
  LoginInitial get _value => super._value as LoginInitial;
}

/// @nodoc
class _$LoginInitial implements LoginInitial {
  const _$LoginInitial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signInInProgress(),
    @required Result signInSuccess(),
    @required Result signInFailure(AuthFailure failure),
    @required Result recoverPasswordSuccess(),
    @required Result recoverPasswordFailure(AuthFailure failure),
  }) {
    assert(initial != null);
    assert(signInInProgress != null);
    assert(signInSuccess != null);
    assert(signInFailure != null);
    assert(recoverPasswordSuccess != null);
    assert(recoverPasswordFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signInInProgress(),
    Result signInSuccess(),
    Result signInFailure(AuthFailure failure),
    Result recoverPasswordSuccess(),
    Result recoverPasswordFailure(AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(LoginInitial value),
    @required Result signInInProgress(LoginSignInInProgress value),
    @required Result signInSuccess(LoginSignInSuccess value),
    @required Result signInFailure(LoginSignInFailure value),
    @required Result recoverPasswordSuccess(LoginRecoverPasswordSuccess value),
    @required Result recoverPasswordFailure(LoginRecoverPasswordFailure value),
  }) {
    assert(initial != null);
    assert(signInInProgress != null);
    assert(signInSuccess != null);
    assert(signInFailure != null);
    assert(recoverPasswordSuccess != null);
    assert(recoverPasswordFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(LoginInitial value),
    Result signInInProgress(LoginSignInInProgress value),
    Result signInSuccess(LoginSignInSuccess value),
    Result signInFailure(LoginSignInFailure value),
    Result recoverPasswordSuccess(LoginRecoverPasswordSuccess value),
    Result recoverPasswordFailure(LoginRecoverPasswordFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginInitial implements LoginState {
  const factory LoginInitial() = _$LoginInitial;
}

/// @nodoc
abstract class $LoginSignInInProgressCopyWith<$Res> {
  factory $LoginSignInInProgressCopyWith(LoginSignInInProgress value,
          $Res Function(LoginSignInInProgress) then) =
      _$LoginSignInInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginSignInInProgressCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginSignInInProgressCopyWith<$Res> {
  _$LoginSignInInProgressCopyWithImpl(
      LoginSignInInProgress _value, $Res Function(LoginSignInInProgress) _then)
      : super(_value, (v) => _then(v as LoginSignInInProgress));

  @override
  LoginSignInInProgress get _value => super._value as LoginSignInInProgress;
}

/// @nodoc
class _$LoginSignInInProgress implements LoginSignInInProgress {
  const _$LoginSignInInProgress();

  @override
  String toString() {
    return 'LoginState.signInInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginSignInInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signInInProgress(),
    @required Result signInSuccess(),
    @required Result signInFailure(AuthFailure failure),
    @required Result recoverPasswordSuccess(),
    @required Result recoverPasswordFailure(AuthFailure failure),
  }) {
    assert(initial != null);
    assert(signInInProgress != null);
    assert(signInSuccess != null);
    assert(signInFailure != null);
    assert(recoverPasswordSuccess != null);
    assert(recoverPasswordFailure != null);
    return signInInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signInInProgress(),
    Result signInSuccess(),
    Result signInFailure(AuthFailure failure),
    Result recoverPasswordSuccess(),
    Result recoverPasswordFailure(AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInInProgress != null) {
      return signInInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(LoginInitial value),
    @required Result signInInProgress(LoginSignInInProgress value),
    @required Result signInSuccess(LoginSignInSuccess value),
    @required Result signInFailure(LoginSignInFailure value),
    @required Result recoverPasswordSuccess(LoginRecoverPasswordSuccess value),
    @required Result recoverPasswordFailure(LoginRecoverPasswordFailure value),
  }) {
    assert(initial != null);
    assert(signInInProgress != null);
    assert(signInSuccess != null);
    assert(signInFailure != null);
    assert(recoverPasswordSuccess != null);
    assert(recoverPasswordFailure != null);
    return signInInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(LoginInitial value),
    Result signInInProgress(LoginSignInInProgress value),
    Result signInSuccess(LoginSignInSuccess value),
    Result signInFailure(LoginSignInFailure value),
    Result recoverPasswordSuccess(LoginRecoverPasswordSuccess value),
    Result recoverPasswordFailure(LoginRecoverPasswordFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInInProgress != null) {
      return signInInProgress(this);
    }
    return orElse();
  }
}

abstract class LoginSignInInProgress implements LoginState {
  const factory LoginSignInInProgress() = _$LoginSignInInProgress;
}

/// @nodoc
abstract class $LoginSignInSuccessCopyWith<$Res> {
  factory $LoginSignInSuccessCopyWith(
          LoginSignInSuccess value, $Res Function(LoginSignInSuccess) then) =
      _$LoginSignInSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginSignInSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginSignInSuccessCopyWith<$Res> {
  _$LoginSignInSuccessCopyWithImpl(
      LoginSignInSuccess _value, $Res Function(LoginSignInSuccess) _then)
      : super(_value, (v) => _then(v as LoginSignInSuccess));

  @override
  LoginSignInSuccess get _value => super._value as LoginSignInSuccess;
}

/// @nodoc
class _$LoginSignInSuccess implements LoginSignInSuccess {
  const _$LoginSignInSuccess();

  @override
  String toString() {
    return 'LoginState.signInSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginSignInSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signInInProgress(),
    @required Result signInSuccess(),
    @required Result signInFailure(AuthFailure failure),
    @required Result recoverPasswordSuccess(),
    @required Result recoverPasswordFailure(AuthFailure failure),
  }) {
    assert(initial != null);
    assert(signInInProgress != null);
    assert(signInSuccess != null);
    assert(signInFailure != null);
    assert(recoverPasswordSuccess != null);
    assert(recoverPasswordFailure != null);
    return signInSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signInInProgress(),
    Result signInSuccess(),
    Result signInFailure(AuthFailure failure),
    Result recoverPasswordSuccess(),
    Result recoverPasswordFailure(AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInSuccess != null) {
      return signInSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(LoginInitial value),
    @required Result signInInProgress(LoginSignInInProgress value),
    @required Result signInSuccess(LoginSignInSuccess value),
    @required Result signInFailure(LoginSignInFailure value),
    @required Result recoverPasswordSuccess(LoginRecoverPasswordSuccess value),
    @required Result recoverPasswordFailure(LoginRecoverPasswordFailure value),
  }) {
    assert(initial != null);
    assert(signInInProgress != null);
    assert(signInSuccess != null);
    assert(signInFailure != null);
    assert(recoverPasswordSuccess != null);
    assert(recoverPasswordFailure != null);
    return signInSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(LoginInitial value),
    Result signInInProgress(LoginSignInInProgress value),
    Result signInSuccess(LoginSignInSuccess value),
    Result signInFailure(LoginSignInFailure value),
    Result recoverPasswordSuccess(LoginRecoverPasswordSuccess value),
    Result recoverPasswordFailure(LoginRecoverPasswordFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInSuccess != null) {
      return signInSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSignInSuccess implements LoginState {
  const factory LoginSignInSuccess() = _$LoginSignInSuccess;
}

/// @nodoc
abstract class $LoginSignInFailureCopyWith<$Res> {
  factory $LoginSignInFailureCopyWith(
          LoginSignInFailure value, $Res Function(LoginSignInFailure) then) =
      _$LoginSignInFailureCopyWithImpl<$Res>;
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoginSignInFailureCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginSignInFailureCopyWith<$Res> {
  _$LoginSignInFailureCopyWithImpl(
      LoginSignInFailure _value, $Res Function(LoginSignInFailure) _then)
      : super(_value, (v) => _then(v as LoginSignInFailure));

  @override
  LoginSignInFailure get _value => super._value as LoginSignInFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(LoginSignInFailure(
      failure: failure == freezed ? _value.failure : failure as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$LoginSignInFailure implements LoginSignInFailure {
  const _$LoginSignInFailure({@required this.failure})
      : assert(failure != null);

  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'LoginState.signInFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginSignInFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $LoginSignInFailureCopyWith<LoginSignInFailure> get copyWith =>
      _$LoginSignInFailureCopyWithImpl<LoginSignInFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signInInProgress(),
    @required Result signInSuccess(),
    @required Result signInFailure(AuthFailure failure),
    @required Result recoverPasswordSuccess(),
    @required Result recoverPasswordFailure(AuthFailure failure),
  }) {
    assert(initial != null);
    assert(signInInProgress != null);
    assert(signInSuccess != null);
    assert(signInFailure != null);
    assert(recoverPasswordSuccess != null);
    assert(recoverPasswordFailure != null);
    return signInFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signInInProgress(),
    Result signInSuccess(),
    Result signInFailure(AuthFailure failure),
    Result recoverPasswordSuccess(),
    Result recoverPasswordFailure(AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInFailure != null) {
      return signInFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(LoginInitial value),
    @required Result signInInProgress(LoginSignInInProgress value),
    @required Result signInSuccess(LoginSignInSuccess value),
    @required Result signInFailure(LoginSignInFailure value),
    @required Result recoverPasswordSuccess(LoginRecoverPasswordSuccess value),
    @required Result recoverPasswordFailure(LoginRecoverPasswordFailure value),
  }) {
    assert(initial != null);
    assert(signInInProgress != null);
    assert(signInSuccess != null);
    assert(signInFailure != null);
    assert(recoverPasswordSuccess != null);
    assert(recoverPasswordFailure != null);
    return signInFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(LoginInitial value),
    Result signInInProgress(LoginSignInInProgress value),
    Result signInSuccess(LoginSignInSuccess value),
    Result signInFailure(LoginSignInFailure value),
    Result recoverPasswordSuccess(LoginRecoverPasswordSuccess value),
    Result recoverPasswordFailure(LoginRecoverPasswordFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInFailure != null) {
      return signInFailure(this);
    }
    return orElse();
  }
}

abstract class LoginSignInFailure implements LoginState {
  const factory LoginSignInFailure({@required AuthFailure failure}) =
      _$LoginSignInFailure;

  AuthFailure get failure;
  $LoginSignInFailureCopyWith<LoginSignInFailure> get copyWith;
}

/// @nodoc
abstract class $LoginRecoverPasswordSuccessCopyWith<$Res> {
  factory $LoginRecoverPasswordSuccessCopyWith(
          LoginRecoverPasswordSuccess value,
          $Res Function(LoginRecoverPasswordSuccess) then) =
      _$LoginRecoverPasswordSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginRecoverPasswordSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginRecoverPasswordSuccessCopyWith<$Res> {
  _$LoginRecoverPasswordSuccessCopyWithImpl(LoginRecoverPasswordSuccess _value,
      $Res Function(LoginRecoverPasswordSuccess) _then)
      : super(_value, (v) => _then(v as LoginRecoverPasswordSuccess));

  @override
  LoginRecoverPasswordSuccess get _value =>
      super._value as LoginRecoverPasswordSuccess;
}

/// @nodoc
class _$LoginRecoverPasswordSuccess implements LoginRecoverPasswordSuccess {
  const _$LoginRecoverPasswordSuccess();

  @override
  String toString() {
    return 'LoginState.recoverPasswordSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginRecoverPasswordSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signInInProgress(),
    @required Result signInSuccess(),
    @required Result signInFailure(AuthFailure failure),
    @required Result recoverPasswordSuccess(),
    @required Result recoverPasswordFailure(AuthFailure failure),
  }) {
    assert(initial != null);
    assert(signInInProgress != null);
    assert(signInSuccess != null);
    assert(signInFailure != null);
    assert(recoverPasswordSuccess != null);
    assert(recoverPasswordFailure != null);
    return recoverPasswordSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signInInProgress(),
    Result signInSuccess(),
    Result signInFailure(AuthFailure failure),
    Result recoverPasswordSuccess(),
    Result recoverPasswordFailure(AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (recoverPasswordSuccess != null) {
      return recoverPasswordSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(LoginInitial value),
    @required Result signInInProgress(LoginSignInInProgress value),
    @required Result signInSuccess(LoginSignInSuccess value),
    @required Result signInFailure(LoginSignInFailure value),
    @required Result recoverPasswordSuccess(LoginRecoverPasswordSuccess value),
    @required Result recoverPasswordFailure(LoginRecoverPasswordFailure value),
  }) {
    assert(initial != null);
    assert(signInInProgress != null);
    assert(signInSuccess != null);
    assert(signInFailure != null);
    assert(recoverPasswordSuccess != null);
    assert(recoverPasswordFailure != null);
    return recoverPasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(LoginInitial value),
    Result signInInProgress(LoginSignInInProgress value),
    Result signInSuccess(LoginSignInSuccess value),
    Result signInFailure(LoginSignInFailure value),
    Result recoverPasswordSuccess(LoginRecoverPasswordSuccess value),
    Result recoverPasswordFailure(LoginRecoverPasswordFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (recoverPasswordSuccess != null) {
      return recoverPasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginRecoverPasswordSuccess implements LoginState {
  const factory LoginRecoverPasswordSuccess() = _$LoginRecoverPasswordSuccess;
}

/// @nodoc
abstract class $LoginRecoverPasswordFailureCopyWith<$Res> {
  factory $LoginRecoverPasswordFailureCopyWith(
          LoginRecoverPasswordFailure value,
          $Res Function(LoginRecoverPasswordFailure) then) =
      _$LoginRecoverPasswordFailureCopyWithImpl<$Res>;
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoginRecoverPasswordFailureCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginRecoverPasswordFailureCopyWith<$Res> {
  _$LoginRecoverPasswordFailureCopyWithImpl(LoginRecoverPasswordFailure _value,
      $Res Function(LoginRecoverPasswordFailure) _then)
      : super(_value, (v) => _then(v as LoginRecoverPasswordFailure));

  @override
  LoginRecoverPasswordFailure get _value =>
      super._value as LoginRecoverPasswordFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(LoginRecoverPasswordFailure(
      failure: failure == freezed ? _value.failure : failure as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$LoginRecoverPasswordFailure implements LoginRecoverPasswordFailure {
  const _$LoginRecoverPasswordFailure({@required this.failure})
      : assert(failure != null);

  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'LoginState.recoverPasswordFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginRecoverPasswordFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $LoginRecoverPasswordFailureCopyWith<LoginRecoverPasswordFailure>
      get copyWith => _$LoginRecoverPasswordFailureCopyWithImpl<
          LoginRecoverPasswordFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signInInProgress(),
    @required Result signInSuccess(),
    @required Result signInFailure(AuthFailure failure),
    @required Result recoverPasswordSuccess(),
    @required Result recoverPasswordFailure(AuthFailure failure),
  }) {
    assert(initial != null);
    assert(signInInProgress != null);
    assert(signInSuccess != null);
    assert(signInFailure != null);
    assert(recoverPasswordSuccess != null);
    assert(recoverPasswordFailure != null);
    return recoverPasswordFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signInInProgress(),
    Result signInSuccess(),
    Result signInFailure(AuthFailure failure),
    Result recoverPasswordSuccess(),
    Result recoverPasswordFailure(AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (recoverPasswordFailure != null) {
      return recoverPasswordFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(LoginInitial value),
    @required Result signInInProgress(LoginSignInInProgress value),
    @required Result signInSuccess(LoginSignInSuccess value),
    @required Result signInFailure(LoginSignInFailure value),
    @required Result recoverPasswordSuccess(LoginRecoverPasswordSuccess value),
    @required Result recoverPasswordFailure(LoginRecoverPasswordFailure value),
  }) {
    assert(initial != null);
    assert(signInInProgress != null);
    assert(signInSuccess != null);
    assert(signInFailure != null);
    assert(recoverPasswordSuccess != null);
    assert(recoverPasswordFailure != null);
    return recoverPasswordFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(LoginInitial value),
    Result signInInProgress(LoginSignInInProgress value),
    Result signInSuccess(LoginSignInSuccess value),
    Result signInFailure(LoginSignInFailure value),
    Result recoverPasswordSuccess(LoginRecoverPasswordSuccess value),
    Result recoverPasswordFailure(LoginRecoverPasswordFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (recoverPasswordFailure != null) {
      return recoverPasswordFailure(this);
    }
    return orElse();
  }
}

abstract class LoginRecoverPasswordFailure implements LoginState {
  const factory LoginRecoverPasswordFailure({@required AuthFailure failure}) =
      _$LoginRecoverPasswordFailure;

  AuthFailure get failure;
  $LoginRecoverPasswordFailureCopyWith<LoginRecoverPasswordFailure>
      get copyWith;
}
