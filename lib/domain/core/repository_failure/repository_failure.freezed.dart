// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'repository_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RepositoryFailureTearOff {
  const _$RepositoryFailureTearOff();

// ignore: unused_element
  UnknownError unknownError(
      {@required dynamic exception,
      @required StackTrace stackTrace,
      @required String message,
      int errorCode}) {
    return UnknownError(
      exception: exception,
      stackTrace: stackTrace,
      message: message,
      errorCode: errorCode,
    );
  }

// ignore: unused_element
  ServerErorr serverError({String message}) {
    return ServerErorr(
      message: message,
    );
  }

// ignore: unused_element
  NoServerResponse noServerResponse() {
    return const NoServerResponse();
  }

// ignore: unused_element
  PermissionsDenied permissionsDenied() {
    return const PermissionsDenied();
  }

// ignore: unused_element
  IncompleteArguments incompleteArguments() {
    return const IncompleteArguments();
  }
}

/// @nodoc
// ignore: unused_element
const $RepositoryFailure = _$RepositoryFailureTearOff();

/// @nodoc
mixin _$RepositoryFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unknownError(dynamic exception, StackTrace stackTrace,
            String message, int errorCode),
    @required Result serverError(String message),
    @required Result noServerResponse(),
    @required Result permissionsDenied(),
    @required Result incompleteArguments(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownError(dynamic exception, StackTrace stackTrace,
        String message, int errorCode),
    Result serverError(String message),
    Result noServerResponse(),
    Result permissionsDenied(),
    Result incompleteArguments(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownError(UnknownError value),
    @required Result serverError(ServerErorr value),
    @required Result noServerResponse(NoServerResponse value),
    @required Result permissionsDenied(PermissionsDenied value),
    @required Result incompleteArguments(IncompleteArguments value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownError(UnknownError value),
    Result serverError(ServerErorr value),
    Result noServerResponse(NoServerResponse value),
    Result permissionsDenied(PermissionsDenied value),
    Result incompleteArguments(IncompleteArguments value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $RepositoryFailureCopyWith<$Res> {
  factory $RepositoryFailureCopyWith(
          RepositoryFailure value, $Res Function(RepositoryFailure) then) =
      _$RepositoryFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepositoryFailureCopyWithImpl<$Res>
    implements $RepositoryFailureCopyWith<$Res> {
  _$RepositoryFailureCopyWithImpl(this._value, this._then);

  final RepositoryFailure _value;
  // ignore: unused_field
  final $Res Function(RepositoryFailure) _then;
}

/// @nodoc
abstract class $UnknownErrorCopyWith<$Res> {
  factory $UnknownErrorCopyWith(
          UnknownError value, $Res Function(UnknownError) then) =
      _$UnknownErrorCopyWithImpl<$Res>;
  $Res call(
      {dynamic exception,
      StackTrace stackTrace,
      String message,
      int errorCode});
}

/// @nodoc
class _$UnknownErrorCopyWithImpl<$Res>
    extends _$RepositoryFailureCopyWithImpl<$Res>
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
      exception: exception == freezed ? _value.exception : exception as dynamic,
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
      @required this.message,
      this.errorCode})
      : assert(exception != null),
        assert(stackTrace != null),
        assert(message != null);

  @override
  final dynamic exception;
  @override
  final StackTrace stackTrace;
  @override
  final String message;
  @override
  final int errorCode;

  @override
  String toString() {
    return 'RepositoryFailure.unknownError(exception: $exception, stackTrace: $stackTrace, message: $message, errorCode: $errorCode)';
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
  Result when<Result extends Object>({
    @required
        Result unknownError(dynamic exception, StackTrace stackTrace,
            String message, int errorCode),
    @required Result serverError(String message),
    @required Result noServerResponse(),
    @required Result permissionsDenied(),
    @required Result incompleteArguments(),
  }) {
    assert(unknownError != null);
    assert(serverError != null);
    assert(noServerResponse != null);
    assert(permissionsDenied != null);
    assert(incompleteArguments != null);
    return unknownError(exception, stackTrace, message, errorCode);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownError(dynamic exception, StackTrace stackTrace,
        String message, int errorCode),
    Result serverError(String message),
    Result noServerResponse(),
    Result permissionsDenied(),
    Result incompleteArguments(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknownError != null) {
      return unknownError(exception, stackTrace, message, errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownError(UnknownError value),
    @required Result serverError(ServerErorr value),
    @required Result noServerResponse(NoServerResponse value),
    @required Result permissionsDenied(PermissionsDenied value),
    @required Result incompleteArguments(IncompleteArguments value),
  }) {
    assert(unknownError != null);
    assert(serverError != null);
    assert(noServerResponse != null);
    assert(permissionsDenied != null);
    assert(incompleteArguments != null);
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownError(UnknownError value),
    Result serverError(ServerErorr value),
    Result noServerResponse(NoServerResponse value),
    Result permissionsDenied(PermissionsDenied value),
    Result incompleteArguments(IncompleteArguments value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnknownError implements RepositoryFailure {
  const factory UnknownError(
      {@required dynamic exception,
      @required StackTrace stackTrace,
      @required String message,
      int errorCode}) = _$UnknownError;

  dynamic get exception;
  StackTrace get stackTrace;
  String get message;
  int get errorCode;
  $UnknownErrorCopyWith<UnknownError> get copyWith;
}

/// @nodoc
abstract class $ServerErorrCopyWith<$Res> {
  factory $ServerErorrCopyWith(
          ServerErorr value, $Res Function(ServerErorr) then) =
      _$ServerErorrCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ServerErorrCopyWithImpl<$Res>
    extends _$RepositoryFailureCopyWithImpl<$Res>
    implements $ServerErorrCopyWith<$Res> {
  _$ServerErorrCopyWithImpl(
      ServerErorr _value, $Res Function(ServerErorr) _then)
      : super(_value, (v) => _then(v as ServerErorr));

  @override
  ServerErorr get _value => super._value as ServerErorr;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ServerErorr(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$ServerErorr implements ServerErorr {
  const _$ServerErorr({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RepositoryFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServerErorr &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ServerErorrCopyWith<ServerErorr> get copyWith =>
      _$ServerErorrCopyWithImpl<ServerErorr>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unknownError(dynamic exception, StackTrace stackTrace,
            String message, int errorCode),
    @required Result serverError(String message),
    @required Result noServerResponse(),
    @required Result permissionsDenied(),
    @required Result incompleteArguments(),
  }) {
    assert(unknownError != null);
    assert(serverError != null);
    assert(noServerResponse != null);
    assert(permissionsDenied != null);
    assert(incompleteArguments != null);
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownError(dynamic exception, StackTrace stackTrace,
        String message, int errorCode),
    Result serverError(String message),
    Result noServerResponse(),
    Result permissionsDenied(),
    Result incompleteArguments(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownError(UnknownError value),
    @required Result serverError(ServerErorr value),
    @required Result noServerResponse(NoServerResponse value),
    @required Result permissionsDenied(PermissionsDenied value),
    @required Result incompleteArguments(IncompleteArguments value),
  }) {
    assert(unknownError != null);
    assert(serverError != null);
    assert(noServerResponse != null);
    assert(permissionsDenied != null);
    assert(incompleteArguments != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownError(UnknownError value),
    Result serverError(ServerErorr value),
    Result noServerResponse(NoServerResponse value),
    Result permissionsDenied(PermissionsDenied value),
    Result incompleteArguments(IncompleteArguments value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerErorr implements RepositoryFailure {
  const factory ServerErorr({String message}) = _$ServerErorr;

  String get message;
  $ServerErorrCopyWith<ServerErorr> get copyWith;
}

/// @nodoc
abstract class $NoServerResponseCopyWith<$Res> {
  factory $NoServerResponseCopyWith(
          NoServerResponse value, $Res Function(NoServerResponse) then) =
      _$NoServerResponseCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoServerResponseCopyWithImpl<$Res>
    extends _$RepositoryFailureCopyWithImpl<$Res>
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
    return 'RepositoryFailure.noServerResponse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoServerResponse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unknownError(dynamic exception, StackTrace stackTrace,
            String message, int errorCode),
    @required Result serverError(String message),
    @required Result noServerResponse(),
    @required Result permissionsDenied(),
    @required Result incompleteArguments(),
  }) {
    assert(unknownError != null);
    assert(serverError != null);
    assert(noServerResponse != null);
    assert(permissionsDenied != null);
    assert(incompleteArguments != null);
    return noServerResponse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownError(dynamic exception, StackTrace stackTrace,
        String message, int errorCode),
    Result serverError(String message),
    Result noServerResponse(),
    Result permissionsDenied(),
    Result incompleteArguments(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noServerResponse != null) {
      return noServerResponse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownError(UnknownError value),
    @required Result serverError(ServerErorr value),
    @required Result noServerResponse(NoServerResponse value),
    @required Result permissionsDenied(PermissionsDenied value),
    @required Result incompleteArguments(IncompleteArguments value),
  }) {
    assert(unknownError != null);
    assert(serverError != null);
    assert(noServerResponse != null);
    assert(permissionsDenied != null);
    assert(incompleteArguments != null);
    return noServerResponse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownError(UnknownError value),
    Result serverError(ServerErorr value),
    Result noServerResponse(NoServerResponse value),
    Result permissionsDenied(PermissionsDenied value),
    Result incompleteArguments(IncompleteArguments value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noServerResponse != null) {
      return noServerResponse(this);
    }
    return orElse();
  }
}

abstract class NoServerResponse implements RepositoryFailure {
  const factory NoServerResponse() = _$NoServerResponse;
}

/// @nodoc
abstract class $PermissionsDeniedCopyWith<$Res> {
  factory $PermissionsDeniedCopyWith(
          PermissionsDenied value, $Res Function(PermissionsDenied) then) =
      _$PermissionsDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermissionsDeniedCopyWithImpl<$Res>
    extends _$RepositoryFailureCopyWithImpl<$Res>
    implements $PermissionsDeniedCopyWith<$Res> {
  _$PermissionsDeniedCopyWithImpl(
      PermissionsDenied _value, $Res Function(PermissionsDenied) _then)
      : super(_value, (v) => _then(v as PermissionsDenied));

  @override
  PermissionsDenied get _value => super._value as PermissionsDenied;
}

/// @nodoc
class _$PermissionsDenied implements PermissionsDenied {
  const _$PermissionsDenied();

  @override
  String toString() {
    return 'RepositoryFailure.permissionsDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PermissionsDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unknownError(dynamic exception, StackTrace stackTrace,
            String message, int errorCode),
    @required Result serverError(String message),
    @required Result noServerResponse(),
    @required Result permissionsDenied(),
    @required Result incompleteArguments(),
  }) {
    assert(unknownError != null);
    assert(serverError != null);
    assert(noServerResponse != null);
    assert(permissionsDenied != null);
    assert(incompleteArguments != null);
    return permissionsDenied();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownError(dynamic exception, StackTrace stackTrace,
        String message, int errorCode),
    Result serverError(String message),
    Result noServerResponse(),
    Result permissionsDenied(),
    Result incompleteArguments(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (permissionsDenied != null) {
      return permissionsDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownError(UnknownError value),
    @required Result serverError(ServerErorr value),
    @required Result noServerResponse(NoServerResponse value),
    @required Result permissionsDenied(PermissionsDenied value),
    @required Result incompleteArguments(IncompleteArguments value),
  }) {
    assert(unknownError != null);
    assert(serverError != null);
    assert(noServerResponse != null);
    assert(permissionsDenied != null);
    assert(incompleteArguments != null);
    return permissionsDenied(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownError(UnknownError value),
    Result serverError(ServerErorr value),
    Result noServerResponse(NoServerResponse value),
    Result permissionsDenied(PermissionsDenied value),
    Result incompleteArguments(IncompleteArguments value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (permissionsDenied != null) {
      return permissionsDenied(this);
    }
    return orElse();
  }
}

abstract class PermissionsDenied implements RepositoryFailure {
  const factory PermissionsDenied() = _$PermissionsDenied;
}

/// @nodoc
abstract class $IncompleteArgumentsCopyWith<$Res> {
  factory $IncompleteArgumentsCopyWith(
          IncompleteArguments value, $Res Function(IncompleteArguments) then) =
      _$IncompleteArgumentsCopyWithImpl<$Res>;
}

/// @nodoc
class _$IncompleteArgumentsCopyWithImpl<$Res>
    extends _$RepositoryFailureCopyWithImpl<$Res>
    implements $IncompleteArgumentsCopyWith<$Res> {
  _$IncompleteArgumentsCopyWithImpl(
      IncompleteArguments _value, $Res Function(IncompleteArguments) _then)
      : super(_value, (v) => _then(v as IncompleteArguments));

  @override
  IncompleteArguments get _value => super._value as IncompleteArguments;
}

/// @nodoc
class _$IncompleteArguments implements IncompleteArguments {
  const _$IncompleteArguments();

  @override
  String toString() {
    return 'RepositoryFailure.incompleteArguments()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IncompleteArguments);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unknownError(dynamic exception, StackTrace stackTrace,
            String message, int errorCode),
    @required Result serverError(String message),
    @required Result noServerResponse(),
    @required Result permissionsDenied(),
    @required Result incompleteArguments(),
  }) {
    assert(unknownError != null);
    assert(serverError != null);
    assert(noServerResponse != null);
    assert(permissionsDenied != null);
    assert(incompleteArguments != null);
    return incompleteArguments();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownError(dynamic exception, StackTrace stackTrace,
        String message, int errorCode),
    Result serverError(String message),
    Result noServerResponse(),
    Result permissionsDenied(),
    Result incompleteArguments(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (incompleteArguments != null) {
      return incompleteArguments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownError(UnknownError value),
    @required Result serverError(ServerErorr value),
    @required Result noServerResponse(NoServerResponse value),
    @required Result permissionsDenied(PermissionsDenied value),
    @required Result incompleteArguments(IncompleteArguments value),
  }) {
    assert(unknownError != null);
    assert(serverError != null);
    assert(noServerResponse != null);
    assert(permissionsDenied != null);
    assert(incompleteArguments != null);
    return incompleteArguments(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownError(UnknownError value),
    Result serverError(ServerErorr value),
    Result noServerResponse(NoServerResponse value),
    Result permissionsDenied(PermissionsDenied value),
    Result incompleteArguments(IncompleteArguments value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (incompleteArguments != null) {
      return incompleteArguments(this);
    }
    return orElse();
  }
}

abstract class IncompleteArguments implements RepositoryFailure {
  const factory IncompleteArguments() = _$IncompleteArguments;
}
