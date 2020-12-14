// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'team_repository_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TeamRepositoryFailureTearOff {
  const _$TeamRepositoryFailureTearOff();

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
}

/// @nodoc
// ignore: unused_element
const $TeamRepositoryFailure = _$TeamRepositoryFailureTearOff();

/// @nodoc
mixin _$TeamRepositoryFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult unexpectedException(Exception exception, StackTrace stackTrace),
    @required TResult insufficientPermissions(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpectedException(Exception exception, StackTrace stackTrace),
    TResult insufficientPermissions(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpectedException(UnexpectedException value),
    @required TResult insufficientPermissions(InsufficientPermissions value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpectedException(UnexpectedException value),
    TResult insufficientPermissions(InsufficientPermissions value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TeamRepositoryFailureCopyWith<$Res> {
  factory $TeamRepositoryFailureCopyWith(TeamRepositoryFailure value,
          $Res Function(TeamRepositoryFailure) then) =
      _$TeamRepositoryFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$TeamRepositoryFailureCopyWithImpl<$Res>
    implements $TeamRepositoryFailureCopyWith<$Res> {
  _$TeamRepositoryFailureCopyWithImpl(this._value, this._then);

  final TeamRepositoryFailure _value;
  // ignore: unused_field
  final $Res Function(TeamRepositoryFailure) _then;
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
    extends _$TeamRepositoryFailureCopyWithImpl<$Res>
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
    return 'TeamRepositoryFailure.unexpectedException(exception: $exception, stackTrace: $stackTrace)';
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
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    return unexpectedException(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpectedException(Exception exception, StackTrace stackTrace),
    TResult insufficientPermissions(),
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
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    return unexpectedException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpectedException(UnexpectedException value),
    TResult insufficientPermissions(InsufficientPermissions value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedException != null) {
      return unexpectedException(this);
    }
    return orElse();
  }
}

abstract class UnexpectedException extends TeamRepositoryFailure {
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
    extends _$TeamRepositoryFailureCopyWithImpl<$Res>
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
    return 'TeamRepositoryFailure.insufficientPermissions()';
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
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpectedException(Exception exception, StackTrace stackTrace),
    TResult insufficientPermissions(),
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
  }) {
    assert(unexpectedException != null);
    assert(insufficientPermissions != null);
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpectedException(UnexpectedException value),
    TResult insufficientPermissions(InsufficientPermissions value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class InsufficientPermissions extends TeamRepositoryFailure {
  const InsufficientPermissions._() : super._();
  const factory InsufficientPermissions() = _$InsufficientPermissions;
}
