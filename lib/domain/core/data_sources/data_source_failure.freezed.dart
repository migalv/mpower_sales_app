// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'data_source_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DataSourceFailureTearOff {
  const _$DataSourceFailureTearOff();

// ignore: unused_element
  UnexpectedException unexpectedException(
      {@required Exception exception, @required StackTrace stackTrace}) {
    return UnexpectedException(
      exception: exception,
      stackTrace: stackTrace,
    );
  }

// ignore: unused_element
  CannotSaveNullElements cannotSaveNullElements() {
    return const CannotSaveNullElements();
  }

// ignore: unused_element
  ElementNotFound elementNotFound() {
    return const ElementNotFound();
  }
}

/// @nodoc
// ignore: unused_element
const $DataSourceFailure = _$DataSourceFailureTearOff();

/// @nodoc
mixin _$DataSourceFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unexpectedException(Exception exception, StackTrace stackTrace),
    @required Result cannotSaveNullElements(),
    @required Result elementNotFound(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result cannotSaveNullElements(),
    Result elementNotFound(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedException(UnexpectedException value),
    @required Result cannotSaveNullElements(CannotSaveNullElements value),
    @required Result elementNotFound(ElementNotFound value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result cannotSaveNullElements(CannotSaveNullElements value),
    Result elementNotFound(ElementNotFound value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $DataSourceFailureCopyWith<$Res> {
  factory $DataSourceFailureCopyWith(
          DataSourceFailure value, $Res Function(DataSourceFailure) then) =
      _$DataSourceFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataSourceFailureCopyWithImpl<$Res>
    implements $DataSourceFailureCopyWith<$Res> {
  _$DataSourceFailureCopyWithImpl(this._value, this._then);

  final DataSourceFailure _value;
  // ignore: unused_field
  final $Res Function(DataSourceFailure) _then;
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
    extends _$DataSourceFailureCopyWithImpl<$Res>
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
class _$UnexpectedException
    with DiagnosticableTreeMixin
    implements UnexpectedException {
  const _$UnexpectedException(
      {@required this.exception, @required this.stackTrace})
      : assert(exception != null),
        assert(stackTrace != null);

  @override
  final Exception exception;
  @override
  final StackTrace stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataSourceFailure.unexpectedException(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'DataSourceFailure.unexpectedException'))
      ..add(DiagnosticsProperty('exception', exception))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
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
    @required Result cannotSaveNullElements(),
    @required Result elementNotFound(),
  }) {
    assert(unexpectedException != null);
    assert(cannotSaveNullElements != null);
    assert(elementNotFound != null);
    return unexpectedException(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result cannotSaveNullElements(),
    Result elementNotFound(),
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
    @required Result cannotSaveNullElements(CannotSaveNullElements value),
    @required Result elementNotFound(ElementNotFound value),
  }) {
    assert(unexpectedException != null);
    assert(cannotSaveNullElements != null);
    assert(elementNotFound != null);
    return unexpectedException(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result cannotSaveNullElements(CannotSaveNullElements value),
    Result elementNotFound(ElementNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedException != null) {
      return unexpectedException(this);
    }
    return orElse();
  }
}

abstract class UnexpectedException implements DataSourceFailure {
  const factory UnexpectedException(
      {@required Exception exception,
      @required StackTrace stackTrace}) = _$UnexpectedException;

  Exception get exception;
  StackTrace get stackTrace;
  $UnexpectedExceptionCopyWith<UnexpectedException> get copyWith;
}

/// @nodoc
abstract class $CannotSaveNullElementsCopyWith<$Res> {
  factory $CannotSaveNullElementsCopyWith(CannotSaveNullElements value,
          $Res Function(CannotSaveNullElements) then) =
      _$CannotSaveNullElementsCopyWithImpl<$Res>;
}

/// @nodoc
class _$CannotSaveNullElementsCopyWithImpl<$Res>
    extends _$DataSourceFailureCopyWithImpl<$Res>
    implements $CannotSaveNullElementsCopyWith<$Res> {
  _$CannotSaveNullElementsCopyWithImpl(CannotSaveNullElements _value,
      $Res Function(CannotSaveNullElements) _then)
      : super(_value, (v) => _then(v as CannotSaveNullElements));

  @override
  CannotSaveNullElements get _value => super._value as CannotSaveNullElements;
}

/// @nodoc
class _$CannotSaveNullElements
    with DiagnosticableTreeMixin
    implements CannotSaveNullElements {
  const _$CannotSaveNullElements();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataSourceFailure.cannotSaveNullElements()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DataSourceFailure.cannotSaveNullElements'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CannotSaveNullElements);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unexpectedException(Exception exception, StackTrace stackTrace),
    @required Result cannotSaveNullElements(),
    @required Result elementNotFound(),
  }) {
    assert(unexpectedException != null);
    assert(cannotSaveNullElements != null);
    assert(elementNotFound != null);
    return cannotSaveNullElements();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result cannotSaveNullElements(),
    Result elementNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cannotSaveNullElements != null) {
      return cannotSaveNullElements();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedException(UnexpectedException value),
    @required Result cannotSaveNullElements(CannotSaveNullElements value),
    @required Result elementNotFound(ElementNotFound value),
  }) {
    assert(unexpectedException != null);
    assert(cannotSaveNullElements != null);
    assert(elementNotFound != null);
    return cannotSaveNullElements(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result cannotSaveNullElements(CannotSaveNullElements value),
    Result elementNotFound(ElementNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cannotSaveNullElements != null) {
      return cannotSaveNullElements(this);
    }
    return orElse();
  }
}

abstract class CannotSaveNullElements implements DataSourceFailure {
  const factory CannotSaveNullElements() = _$CannotSaveNullElements;
}

/// @nodoc
abstract class $ElementNotFoundCopyWith<$Res> {
  factory $ElementNotFoundCopyWith(
          ElementNotFound value, $Res Function(ElementNotFound) then) =
      _$ElementNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$ElementNotFoundCopyWithImpl<$Res>
    extends _$DataSourceFailureCopyWithImpl<$Res>
    implements $ElementNotFoundCopyWith<$Res> {
  _$ElementNotFoundCopyWithImpl(
      ElementNotFound _value, $Res Function(ElementNotFound) _then)
      : super(_value, (v) => _then(v as ElementNotFound));

  @override
  ElementNotFound get _value => super._value as ElementNotFound;
}

/// @nodoc
class _$ElementNotFound
    with DiagnosticableTreeMixin
    implements ElementNotFound {
  const _$ElementNotFound();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataSourceFailure.elementNotFound()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DataSourceFailure.elementNotFound'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ElementNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unexpectedException(Exception exception, StackTrace stackTrace),
    @required Result cannotSaveNullElements(),
    @required Result elementNotFound(),
  }) {
    assert(unexpectedException != null);
    assert(cannotSaveNullElements != null);
    assert(elementNotFound != null);
    return elementNotFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result cannotSaveNullElements(),
    Result elementNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (elementNotFound != null) {
      return elementNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedException(UnexpectedException value),
    @required Result cannotSaveNullElements(CannotSaveNullElements value),
    @required Result elementNotFound(ElementNotFound value),
  }) {
    assert(unexpectedException != null);
    assert(cannotSaveNullElements != null);
    assert(elementNotFound != null);
    return elementNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result cannotSaveNullElements(CannotSaveNullElements value),
    Result elementNotFound(ElementNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (elementNotFound != null) {
      return elementNotFound(this);
    }
    return orElse();
  }
}

abstract class ElementNotFound implements DataSourceFailure {
  const factory ElementNotFound() = _$ElementNotFound;
}
