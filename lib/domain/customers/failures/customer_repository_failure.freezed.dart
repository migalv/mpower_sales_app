// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'customer_repository_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CustomerRepositoryFailureTearOff {
  const _$CustomerRepositoryFailureTearOff();

// ignore: unused_element
  UnexpectedException unexpectedException(
      {@required Exception exception, @required StackTrace stackTrace}) {
    return UnexpectedException(
      exception: exception,
      stackTrace: stackTrace,
    );
  }

// ignore: unused_element
  InsufficientPermissions insufficientPermissions() {
    return const InsufficientPermissions();
  }

// ignore: unused_element
  UnexpectedFailure unexpectedFailure() {
    return const UnexpectedFailure();
  }

// ignore: unused_element
  InvalidElement invalidElement() {
    return const InvalidElement();
  }
}

/// @nodoc
// ignore: unused_element
const $CustomerRepositoryFailure = _$CustomerRepositoryFailureTearOff();

/// @nodoc
mixin _$CustomerRepositoryFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unexpectedException(Exception exception, StackTrace stackTrace),
    @required Result insufficientPermissions(),
    @required Result unexpectedFailure(),
    @required Result invalidElement(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result insufficientPermissions(),
    Result unexpectedFailure(),
    Result invalidElement(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedException(UnexpectedException value),
    @required Result insufficientPermissions(InsufficientPermissions value),
    @required Result unexpectedFailure(UnexpectedFailure value),
    @required Result invalidElement(InvalidElement value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result insufficientPermissions(InsufficientPermissions value),
    Result unexpectedFailure(UnexpectedFailure value),
    Result invalidElement(InvalidElement value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CustomerRepositoryFailureCopyWith<$Res> {
  factory $CustomerRepositoryFailureCopyWith(CustomerRepositoryFailure value,
          $Res Function(CustomerRepositoryFailure) then) =
      _$CustomerRepositoryFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomerRepositoryFailureCopyWithImpl<$Res>
    implements $CustomerRepositoryFailureCopyWith<$Res> {
  _$CustomerRepositoryFailureCopyWithImpl(this._value, this._then);

  final CustomerRepositoryFailure _value;
  // ignore: unused_field
  final $Res Function(CustomerRepositoryFailure) _then;
}

/// @nodoc
abstract class $UnexpectedExceptionCopyWith<$Res> {
  factory $UnexpectedExceptionCopyWith(
          UnexpectedException value, $Res Function(UnexpectedException) then) =
      _$UnexpectedExceptionCopyWithImpl<$Res>;
  $Res call({Exception exception, StackTrace stackTrace});
}

/// @nodoc
class _$UnexpectedExceptionCopyWithImpl<$Res>
    extends _$CustomerRepositoryFailureCopyWithImpl<$Res>
    implements $UnexpectedExceptionCopyWith<$Res> {
  _$UnexpectedExceptionCopyWithImpl(
      UnexpectedException _value, $Res Function(UnexpectedException) _then)
      : super(_value, (v) => _then(v as UnexpectedException));

  @override
  UnexpectedException get _value => super._value as UnexpectedException;

  @override
  $Res call({
    Object exception = freezed,
    Object stackTrace = freezed,
  }) {
    return _then(UnexpectedException(
      exception:
          exception == freezed ? _value.exception : exception as Exception,
      stackTrace:
          stackTrace == freezed ? _value.stackTrace : stackTrace as StackTrace,
    ));
  }
}

/// @nodoc
class _$UnexpectedException implements UnexpectedException {
  const _$UnexpectedException(
      {@required this.exception, @required this.stackTrace})
      : assert(exception != null),
        assert(stackTrace != null);

  @override
  final Exception exception;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CustomerRepositoryFailure.unexpectedException(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnexpectedException &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exception) ^
      const DeepCollectionEquality().hash(stackTrace);

  @override
  $UnexpectedExceptionCopyWith<UnexpectedException> get copyWith =>
      _$UnexpectedExceptionCopyWithImpl<UnexpectedException>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unexpectedException(Exception exception, StackTrace stackTrace),
    @required Result insufficientPermissions(),
    @required Result unexpectedFailure(),
    @required Result invalidElement(),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return unexpectedException(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result insufficientPermissions(),
    Result unexpectedFailure(),
    Result invalidElement(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedException != null) {
      return unexpectedException(exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedException(UnexpectedException value),
    @required Result insufficientPermissions(InsufficientPermissions value),
    @required Result unexpectedFailure(UnexpectedFailure value),
    @required Result invalidElement(InvalidElement value),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return unexpectedException(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result insufficientPermissions(InsufficientPermissions value),
    Result unexpectedFailure(UnexpectedFailure value),
    Result invalidElement(InvalidElement value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedException != null) {
      return unexpectedException(this);
    }
    return orElse();
  }
}

abstract class UnexpectedException implements CustomerRepositoryFailure {
  const factory UnexpectedException(
      {@required Exception exception,
      @required StackTrace stackTrace}) = _$UnexpectedException;

  Exception get exception;
  StackTrace get stackTrace;
  $UnexpectedExceptionCopyWith<UnexpectedException> get copyWith;
}

/// @nodoc
abstract class $InsufficientPermissionsCopyWith<$Res> {
  factory $InsufficientPermissionsCopyWith(InsufficientPermissions value,
          $Res Function(InsufficientPermissions) then) =
      _$InsufficientPermissionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$InsufficientPermissionsCopyWithImpl<$Res>
    extends _$CustomerRepositoryFailureCopyWithImpl<$Res>
    implements $InsufficientPermissionsCopyWith<$Res> {
  _$InsufficientPermissionsCopyWithImpl(InsufficientPermissions _value,
      $Res Function(InsufficientPermissions) _then)
      : super(_value, (v) => _then(v as InsufficientPermissions));

  @override
  InsufficientPermissions get _value => super._value as InsufficientPermissions;
}

/// @nodoc
class _$InsufficientPermissions implements InsufficientPermissions {
  const _$InsufficientPermissions();

  @override
  String toString() {
    return 'CustomerRepositoryFailure.insufficientPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InsufficientPermissions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unexpectedException(Exception exception, StackTrace stackTrace),
    @required Result insufficientPermissions(),
    @required Result unexpectedFailure(),
    @required Result invalidElement(),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result insufficientPermissions(),
    Result unexpectedFailure(),
    Result invalidElement(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermissions != null) {
      return insufficientPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedException(UnexpectedException value),
    @required Result insufficientPermissions(InsufficientPermissions value),
    @required Result unexpectedFailure(UnexpectedFailure value),
    @required Result invalidElement(InvalidElement value),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result insufficientPermissions(InsufficientPermissions value),
    Result unexpectedFailure(UnexpectedFailure value),
    Result invalidElement(InvalidElement value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class InsufficientPermissions implements CustomerRepositoryFailure {
  const factory InsufficientPermissions() = _$InsufficientPermissions;
}

/// @nodoc
abstract class $UnexpectedFailureCopyWith<$Res> {
  factory $UnexpectedFailureCopyWith(
          UnexpectedFailure value, $Res Function(UnexpectedFailure) then) =
      _$UnexpectedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedFailureCopyWithImpl<$Res>
    extends _$CustomerRepositoryFailureCopyWithImpl<$Res>
    implements $UnexpectedFailureCopyWith<$Res> {
  _$UnexpectedFailureCopyWithImpl(
      UnexpectedFailure _value, $Res Function(UnexpectedFailure) _then)
      : super(_value, (v) => _then(v as UnexpectedFailure));

  @override
  UnexpectedFailure get _value => super._value as UnexpectedFailure;
}

/// @nodoc
class _$UnexpectedFailure implements UnexpectedFailure {
  const _$UnexpectedFailure();

  @override
  String toString() {
    return 'CustomerRepositoryFailure.unexpectedFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnexpectedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unexpectedException(Exception exception, StackTrace stackTrace),
    @required Result insufficientPermissions(),
    @required Result unexpectedFailure(),
    @required Result invalidElement(),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return unexpectedFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result insufficientPermissions(),
    Result unexpectedFailure(),
    Result invalidElement(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedFailure != null) {
      return unexpectedFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedException(UnexpectedException value),
    @required Result insufficientPermissions(InsufficientPermissions value),
    @required Result unexpectedFailure(UnexpectedFailure value),
    @required Result invalidElement(InvalidElement value),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return unexpectedFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result insufficientPermissions(InsufficientPermissions value),
    Result unexpectedFailure(UnexpectedFailure value),
    Result invalidElement(InvalidElement value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedFailure != null) {
      return unexpectedFailure(this);
    }
    return orElse();
  }
}

abstract class UnexpectedFailure implements CustomerRepositoryFailure {
  const factory UnexpectedFailure() = _$UnexpectedFailure;
}

/// @nodoc
abstract class $InvalidElementCopyWith<$Res> {
  factory $InvalidElementCopyWith(
          InvalidElement value, $Res Function(InvalidElement) then) =
      _$InvalidElementCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidElementCopyWithImpl<$Res>
    extends _$CustomerRepositoryFailureCopyWithImpl<$Res>
    implements $InvalidElementCopyWith<$Res> {
  _$InvalidElementCopyWithImpl(
      InvalidElement _value, $Res Function(InvalidElement) _then)
      : super(_value, (v) => _then(v as InvalidElement));

  @override
  InvalidElement get _value => super._value as InvalidElement;
}

/// @nodoc
class _$InvalidElement implements InvalidElement {
  const _$InvalidElement();

  @override
  String toString() {
    return 'CustomerRepositoryFailure.invalidElement()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidElement);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unexpectedException(Exception exception, StackTrace stackTrace),
    @required Result insufficientPermissions(),
    @required Result unexpectedFailure(),
    @required Result invalidElement(),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return invalidElement();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result insufficientPermissions(),
    Result unexpectedFailure(),
    Result invalidElement(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidElement != null) {
      return invalidElement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedException(UnexpectedException value),
    @required Result insufficientPermissions(InsufficientPermissions value),
    @required Result unexpectedFailure(UnexpectedFailure value),
    @required Result invalidElement(InvalidElement value),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return invalidElement(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result insufficientPermissions(InsufficientPermissions value),
    Result unexpectedFailure(UnexpectedFailure value),
    Result invalidElement(InvalidElement value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidElement != null) {
      return invalidElement(this);
    }
    return orElse();
  }
}

abstract class InvalidElement implements CustomerRepositoryFailure {
  const factory InvalidElement() = _$InvalidElement;
}
