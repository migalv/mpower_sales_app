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
  UnexpectedFailure unexpectedFailure({DataSourceFailure failure}) {
    return UnexpectedFailure(
      failure: failure,
    );
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
  TResult when<TResult extends Object>({
    @required
        TResult unexpectedException(Exception exception, StackTrace stackTrace),
    @required TResult insufficientPermissions(),
    @required TResult unexpectedFailure(DataSourceFailure failure),
    @required TResult invalidElement(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpectedException(Exception exception, StackTrace stackTrace),
    TResult insufficientPermissions(),
    TResult unexpectedFailure(DataSourceFailure failure),
    TResult invalidElement(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpectedException(UnexpectedException value),
    @required TResult insufficientPermissions(InsufficientPermissions value),
    @required TResult unexpectedFailure(UnexpectedFailure value),
    @required TResult invalidElement(InvalidElement value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpectedException(UnexpectedException value),
    TResult insufficientPermissions(InsufficientPermissions value),
    TResult unexpectedFailure(UnexpectedFailure value),
    TResult invalidElement(InvalidElement value),
    @required TResult orElse(),
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
class _$UnexpectedException extends UnexpectedException {
  const _$UnexpectedException(
      {@required this.exception, @required this.stackTrace})
      : assert(exception != null),
        assert(stackTrace != null),
        super._();

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
  TResult when<TResult extends Object>({
    @required
        TResult unexpectedException(Exception exception, StackTrace stackTrace),
    @required TResult insufficientPermissions(),
    @required TResult unexpectedFailure(DataSourceFailure failure),
    @required TResult invalidElement(),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return unexpectedException(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpectedException(Exception exception, StackTrace stackTrace),
    TResult insufficientPermissions(),
    TResult unexpectedFailure(DataSourceFailure failure),
    TResult invalidElement(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedException != null) {
      return unexpectedException(exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpectedException(UnexpectedException value),
    @required TResult insufficientPermissions(InsufficientPermissions value),
    @required TResult unexpectedFailure(UnexpectedFailure value),
    @required TResult invalidElement(InvalidElement value),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return unexpectedException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpectedException(UnexpectedException value),
    TResult insufficientPermissions(InsufficientPermissions value),
    TResult unexpectedFailure(UnexpectedFailure value),
    TResult invalidElement(InvalidElement value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedException != null) {
      return unexpectedException(this);
    }
    return orElse();
  }
}

abstract class UnexpectedException extends CustomerRepositoryFailure {
  const UnexpectedException._() : super._();
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
class _$InsufficientPermissions extends InsufficientPermissions {
  const _$InsufficientPermissions() : super._();

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
  TResult when<TResult extends Object>({
    @required
        TResult unexpectedException(Exception exception, StackTrace stackTrace),
    @required TResult insufficientPermissions(),
    @required TResult unexpectedFailure(DataSourceFailure failure),
    @required TResult invalidElement(),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpectedException(Exception exception, StackTrace stackTrace),
    TResult insufficientPermissions(),
    TResult unexpectedFailure(DataSourceFailure failure),
    TResult invalidElement(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermissions != null) {
      return insufficientPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpectedException(UnexpectedException value),
    @required TResult insufficientPermissions(InsufficientPermissions value),
    @required TResult unexpectedFailure(UnexpectedFailure value),
    @required TResult invalidElement(InvalidElement value),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpectedException(UnexpectedException value),
    TResult insufficientPermissions(InsufficientPermissions value),
    TResult unexpectedFailure(UnexpectedFailure value),
    TResult invalidElement(InvalidElement value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class InsufficientPermissions extends CustomerRepositoryFailure {
  const InsufficientPermissions._() : super._();
  const factory InsufficientPermissions() = _$InsufficientPermissions;
}

/// @nodoc
abstract class $UnexpectedFailureCopyWith<$Res> {
  factory $UnexpectedFailureCopyWith(
          UnexpectedFailure value, $Res Function(UnexpectedFailure) then) =
      _$UnexpectedFailureCopyWithImpl<$Res>;
  $Res call({DataSourceFailure failure});

  $DataSourceFailureCopyWith<$Res> get failure;
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

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(UnexpectedFailure(
      failure:
          failure == freezed ? _value.failure : failure as DataSourceFailure,
    ));
  }

  @override
  $DataSourceFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $DataSourceFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$UnexpectedFailure extends UnexpectedFailure {
  const _$UnexpectedFailure({this.failure}) : super._();

  @override
  final DataSourceFailure failure;

  @override
  String toString() {
    return 'CustomerRepositoryFailure.unexpectedFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnexpectedFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $UnexpectedFailureCopyWith<UnexpectedFailure> get copyWith =>
      _$UnexpectedFailureCopyWithImpl<UnexpectedFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult unexpectedException(Exception exception, StackTrace stackTrace),
    @required TResult insufficientPermissions(),
    @required TResult unexpectedFailure(DataSourceFailure failure),
    @required TResult invalidElement(),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return unexpectedFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpectedException(Exception exception, StackTrace stackTrace),
    TResult insufficientPermissions(),
    TResult unexpectedFailure(DataSourceFailure failure),
    TResult invalidElement(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedFailure != null) {
      return unexpectedFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpectedException(UnexpectedException value),
    @required TResult insufficientPermissions(InsufficientPermissions value),
    @required TResult unexpectedFailure(UnexpectedFailure value),
    @required TResult invalidElement(InvalidElement value),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return unexpectedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpectedException(UnexpectedException value),
    TResult insufficientPermissions(InsufficientPermissions value),
    TResult unexpectedFailure(UnexpectedFailure value),
    TResult invalidElement(InvalidElement value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedFailure != null) {
      return unexpectedFailure(this);
    }
    return orElse();
  }
}

abstract class UnexpectedFailure extends CustomerRepositoryFailure {
  const UnexpectedFailure._() : super._();
  const factory UnexpectedFailure({DataSourceFailure failure}) =
      _$UnexpectedFailure;

  DataSourceFailure get failure;
  $UnexpectedFailureCopyWith<UnexpectedFailure> get copyWith;
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
class _$InvalidElement extends InvalidElement {
  const _$InvalidElement() : super._();

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
  TResult when<TResult extends Object>({
    @required
        TResult unexpectedException(Exception exception, StackTrace stackTrace),
    @required TResult insufficientPermissions(),
    @required TResult unexpectedFailure(DataSourceFailure failure),
    @required TResult invalidElement(),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return invalidElement();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpectedException(Exception exception, StackTrace stackTrace),
    TResult insufficientPermissions(),
    TResult unexpectedFailure(DataSourceFailure failure),
    TResult invalidElement(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidElement != null) {
      return invalidElement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpectedException(UnexpectedException value),
    @required TResult insufficientPermissions(InsufficientPermissions value),
    @required TResult unexpectedFailure(UnexpectedFailure value),
    @required TResult invalidElement(InvalidElement value),
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    assert(unexpectedFailure != null);
    assert(invalidElement != null);
    return invalidElement(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpectedException(UnexpectedException value),
    TResult insufficientPermissions(InsufficientPermissions value),
    TResult unexpectedFailure(UnexpectedFailure value),
    TResult invalidElement(InvalidElement value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidElement != null) {
      return invalidElement(this);
    }
    return orElse();
  }
}

abstract class InvalidElement extends CustomerRepositoryFailure {
  const InvalidElement._() : super._();
  const factory InvalidElement() = _$InvalidElement;
}
