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
  NullElement nullElement() {
    return const NullElement();
  }

// ignore: unused_element
  ElementNotFound elementNotFound() {
    return const ElementNotFound();
  }

// ignore: unused_element
  NoElementsForCollection noElementsFor({@required String collection}) {
    return NoElementsForCollection(
      collection: collection,
    );
  }

// ignore: unused_element
  ServerError serverError({dynamic error}) {
    return ServerError(
      error: error,
    );
  }

// ignore: unused_element
  InsufficientPermissions insufficientPermissions() {
    return const InsufficientPermissions();
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
    @required Result nullElement(),
    @required Result elementNotFound(),
    @required Result noElementsFor(String collection),
    @required Result serverError(dynamic error),
    @required Result insufficientPermissions(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result nullElement(),
    Result elementNotFound(),
    Result noElementsFor(String collection),
    Result serverError(dynamic error),
    Result insufficientPermissions(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedException(UnexpectedException value),
    @required Result nullElement(NullElement value),
    @required Result elementNotFound(ElementNotFound value),
    @required Result noElementsFor(NoElementsForCollection value),
    @required Result serverError(ServerError value),
    @required Result insufficientPermissions(InsufficientPermissions value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result nullElement(NullElement value),
    Result elementNotFound(ElementNotFound value),
    Result noElementsFor(NoElementsForCollection value),
    Result serverError(ServerError value),
    Result insufficientPermissions(InsufficientPermissions value),
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
    @required Result nullElement(),
    @required Result elementNotFound(),
    @required Result noElementsFor(String collection),
    @required Result serverError(dynamic error),
    @required Result insufficientPermissions(),
  }) {
    assert(unexpectedException != null);
    assert(nullElement != null);
    assert(elementNotFound != null);
    assert(noElementsFor != null);
    assert(serverError != null);
    assert(insufficientPermissions != null);
    return unexpectedException(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result nullElement(),
    Result elementNotFound(),
    Result noElementsFor(String collection),
    Result serverError(dynamic error),
    Result insufficientPermissions(),
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
    @required Result nullElement(NullElement value),
    @required Result elementNotFound(ElementNotFound value),
    @required Result noElementsFor(NoElementsForCollection value),
    @required Result serverError(ServerError value),
    @required Result insufficientPermissions(InsufficientPermissions value),
  }) {
    assert(unexpectedException != null);
    assert(nullElement != null);
    assert(elementNotFound != null);
    assert(noElementsFor != null);
    assert(serverError != null);
    assert(insufficientPermissions != null);
    return unexpectedException(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result nullElement(NullElement value),
    Result elementNotFound(ElementNotFound value),
    Result noElementsFor(NoElementsForCollection value),
    Result serverError(ServerError value),
    Result insufficientPermissions(InsufficientPermissions value),
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
abstract class $NullElementCopyWith<$Res> {
  factory $NullElementCopyWith(
          NullElement value, $Res Function(NullElement) then) =
      _$NullElementCopyWithImpl<$Res>;
}

/// @nodoc
class _$NullElementCopyWithImpl<$Res>
    extends _$DataSourceFailureCopyWithImpl<$Res>
    implements $NullElementCopyWith<$Res> {
  _$NullElementCopyWithImpl(
      NullElement _value, $Res Function(NullElement) _then)
      : super(_value, (v) => _then(v as NullElement));

  @override
  NullElement get _value => super._value as NullElement;
}

/// @nodoc
class _$NullElement with DiagnosticableTreeMixin implements NullElement {
  const _$NullElement();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataSourceFailure.nullElement()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DataSourceFailure.nullElement'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NullElement);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unexpectedException(Exception exception, StackTrace stackTrace),
    @required Result nullElement(),
    @required Result elementNotFound(),
    @required Result noElementsFor(String collection),
    @required Result serverError(dynamic error),
    @required Result insufficientPermissions(),
  }) {
    assert(unexpectedException != null);
    assert(nullElement != null);
    assert(elementNotFound != null);
    assert(noElementsFor != null);
    assert(serverError != null);
    assert(insufficientPermissions != null);
    return nullElement();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result nullElement(),
    Result elementNotFound(),
    Result noElementsFor(String collection),
    Result serverError(dynamic error),
    Result insufficientPermissions(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nullElement != null) {
      return nullElement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedException(UnexpectedException value),
    @required Result nullElement(NullElement value),
    @required Result elementNotFound(ElementNotFound value),
    @required Result noElementsFor(NoElementsForCollection value),
    @required Result serverError(ServerError value),
    @required Result insufficientPermissions(InsufficientPermissions value),
  }) {
    assert(unexpectedException != null);
    assert(nullElement != null);
    assert(elementNotFound != null);
    assert(noElementsFor != null);
    assert(serverError != null);
    assert(insufficientPermissions != null);
    return nullElement(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result nullElement(NullElement value),
    Result elementNotFound(ElementNotFound value),
    Result noElementsFor(NoElementsForCollection value),
    Result serverError(ServerError value),
    Result insufficientPermissions(InsufficientPermissions value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nullElement != null) {
      return nullElement(this);
    }
    return orElse();
  }
}

abstract class NullElement implements DataSourceFailure {
  const factory NullElement() = _$NullElement;
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
    @required Result nullElement(),
    @required Result elementNotFound(),
    @required Result noElementsFor(String collection),
    @required Result serverError(dynamic error),
    @required Result insufficientPermissions(),
  }) {
    assert(unexpectedException != null);
    assert(nullElement != null);
    assert(elementNotFound != null);
    assert(noElementsFor != null);
    assert(serverError != null);
    assert(insufficientPermissions != null);
    return elementNotFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result nullElement(),
    Result elementNotFound(),
    Result noElementsFor(String collection),
    Result serverError(dynamic error),
    Result insufficientPermissions(),
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
    @required Result nullElement(NullElement value),
    @required Result elementNotFound(ElementNotFound value),
    @required Result noElementsFor(NoElementsForCollection value),
    @required Result serverError(ServerError value),
    @required Result insufficientPermissions(InsufficientPermissions value),
  }) {
    assert(unexpectedException != null);
    assert(nullElement != null);
    assert(elementNotFound != null);
    assert(noElementsFor != null);
    assert(serverError != null);
    assert(insufficientPermissions != null);
    return elementNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result nullElement(NullElement value),
    Result elementNotFound(ElementNotFound value),
    Result noElementsFor(NoElementsForCollection value),
    Result serverError(ServerError value),
    Result insufficientPermissions(InsufficientPermissions value),
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

/// @nodoc
abstract class $NoElementsForCollectionCopyWith<$Res> {
  factory $NoElementsForCollectionCopyWith(NoElementsForCollection value,
          $Res Function(NoElementsForCollection) then) =
      _$NoElementsForCollectionCopyWithImpl<$Res>;
  $Res call({String collection});
}

/// @nodoc
class _$NoElementsForCollectionCopyWithImpl<$Res>
    extends _$DataSourceFailureCopyWithImpl<$Res>
    implements $NoElementsForCollectionCopyWith<$Res> {
  _$NoElementsForCollectionCopyWithImpl(NoElementsForCollection _value,
      $Res Function(NoElementsForCollection) _then)
      : super(_value, (v) => _then(v as NoElementsForCollection));

  @override
  NoElementsForCollection get _value => super._value as NoElementsForCollection;

  @override
  $Res call({
    Object collection = freezed,
  }) {
    return _then(NoElementsForCollection(
      collection:
          collection == freezed ? _value.collection : collection as String,
    ));
  }
}

/// @nodoc
class _$NoElementsForCollection
    with DiagnosticableTreeMixin
    implements NoElementsForCollection {
  const _$NoElementsForCollection({@required this.collection})
      : assert(collection != null);

  @override
  final String collection;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataSourceFailure.noElementsFor(collection: $collection)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DataSourceFailure.noElementsFor'))
      ..add(DiagnosticsProperty('collection', collection));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoElementsForCollection &&
            (identical(other.collection, collection) ||
                const DeepCollectionEquality()
                    .equals(other.collection, collection)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(collection);

  @override
  $NoElementsForCollectionCopyWith<NoElementsForCollection> get copyWith =>
      _$NoElementsForCollectionCopyWithImpl<NoElementsForCollection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unexpectedException(Exception exception, StackTrace stackTrace),
    @required Result nullElement(),
    @required Result elementNotFound(),
    @required Result noElementsFor(String collection),
    @required Result serverError(dynamic error),
    @required Result insufficientPermissions(),
  }) {
    assert(unexpectedException != null);
    assert(nullElement != null);
    assert(elementNotFound != null);
    assert(noElementsFor != null);
    assert(serverError != null);
    assert(insufficientPermissions != null);
    return noElementsFor(collection);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result nullElement(),
    Result elementNotFound(),
    Result noElementsFor(String collection),
    Result serverError(dynamic error),
    Result insufficientPermissions(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noElementsFor != null) {
      return noElementsFor(collection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedException(UnexpectedException value),
    @required Result nullElement(NullElement value),
    @required Result elementNotFound(ElementNotFound value),
    @required Result noElementsFor(NoElementsForCollection value),
    @required Result serverError(ServerError value),
    @required Result insufficientPermissions(InsufficientPermissions value),
  }) {
    assert(unexpectedException != null);
    assert(nullElement != null);
    assert(elementNotFound != null);
    assert(noElementsFor != null);
    assert(serverError != null);
    assert(insufficientPermissions != null);
    return noElementsFor(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result nullElement(NullElement value),
    Result elementNotFound(ElementNotFound value),
    Result noElementsFor(NoElementsForCollection value),
    Result serverError(ServerError value),
    Result insufficientPermissions(InsufficientPermissions value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noElementsFor != null) {
      return noElementsFor(this);
    }
    return orElse();
  }
}

abstract class NoElementsForCollection implements DataSourceFailure {
  const factory NoElementsForCollection({@required String collection}) =
      _$NoElementsForCollection;

  String get collection;
  $NoElementsForCollectionCopyWith<NoElementsForCollection> get copyWith;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    extends _$DataSourceFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ServerError(
      error: error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$ServerError with DiagnosticableTreeMixin implements ServerError {
  const _$ServerError({this.error});

  @override
  final dynamic error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataSourceFailure.serverError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DataSourceFailure.serverError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServerError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ServerErrorCopyWith<ServerError> get copyWith =>
      _$ServerErrorCopyWithImpl<ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result unexpectedException(Exception exception, StackTrace stackTrace),
    @required Result nullElement(),
    @required Result elementNotFound(),
    @required Result noElementsFor(String collection),
    @required Result serverError(dynamic error),
    @required Result insufficientPermissions(),
  }) {
    assert(unexpectedException != null);
    assert(nullElement != null);
    assert(elementNotFound != null);
    assert(noElementsFor != null);
    assert(serverError != null);
    assert(insufficientPermissions != null);
    return serverError(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result nullElement(),
    Result elementNotFound(),
    Result noElementsFor(String collection),
    Result serverError(dynamic error),
    Result insufficientPermissions(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedException(UnexpectedException value),
    @required Result nullElement(NullElement value),
    @required Result elementNotFound(ElementNotFound value),
    @required Result noElementsFor(NoElementsForCollection value),
    @required Result serverError(ServerError value),
    @required Result insufficientPermissions(InsufficientPermissions value),
  }) {
    assert(unexpectedException != null);
    assert(nullElement != null);
    assert(elementNotFound != null);
    assert(noElementsFor != null);
    assert(serverError != null);
    assert(insufficientPermissions != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result nullElement(NullElement value),
    Result elementNotFound(ElementNotFound value),
    Result noElementsFor(NoElementsForCollection value),
    Result serverError(ServerError value),
    Result insufficientPermissions(InsufficientPermissions value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements DataSourceFailure {
  const factory ServerError({dynamic error}) = _$ServerError;

  dynamic get error;
  $ServerErrorCopyWith<ServerError> get copyWith;
}

/// @nodoc
abstract class $InsufficientPermissionsCopyWith<$Res> {
  factory $InsufficientPermissionsCopyWith(InsufficientPermissions value,
          $Res Function(InsufficientPermissions) then) =
      _$InsufficientPermissionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$InsufficientPermissionsCopyWithImpl<$Res>
    extends _$DataSourceFailureCopyWithImpl<$Res>
    implements $InsufficientPermissionsCopyWith<$Res> {
  _$InsufficientPermissionsCopyWithImpl(InsufficientPermissions _value,
      $Res Function(InsufficientPermissions) _then)
      : super(_value, (v) => _then(v as InsufficientPermissions));

  @override
  InsufficientPermissions get _value => super._value as InsufficientPermissions;
}

/// @nodoc
class _$InsufficientPermissions
    with DiagnosticableTreeMixin
    implements InsufficientPermissions {
  const _$InsufficientPermissions();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataSourceFailure.insufficientPermissions()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DataSourceFailure.insufficientPermissions'));
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
    @required Result nullElement(),
    @required Result elementNotFound(),
    @required Result noElementsFor(String collection),
    @required Result serverError(dynamic error),
    @required Result insufficientPermissions(),
  }) {
    assert(unexpectedException != null);
    assert(nullElement != null);
    assert(elementNotFound != null);
    assert(noElementsFor != null);
    assert(serverError != null);
    assert(insufficientPermissions != null);
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedException(Exception exception, StackTrace stackTrace),
    Result nullElement(),
    Result elementNotFound(),
    Result noElementsFor(String collection),
    Result serverError(dynamic error),
    Result insufficientPermissions(),
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
    @required Result nullElement(NullElement value),
    @required Result elementNotFound(ElementNotFound value),
    @required Result noElementsFor(NoElementsForCollection value),
    @required Result serverError(ServerError value),
    @required Result insufficientPermissions(InsufficientPermissions value),
  }) {
    assert(unexpectedException != null);
    assert(nullElement != null);
    assert(elementNotFound != null);
    assert(noElementsFor != null);
    assert(serverError != null);
    assert(insufficientPermissions != null);
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedException(UnexpectedException value),
    Result nullElement(NullElement value),
    Result elementNotFound(ElementNotFound value),
    Result noElementsFor(NoElementsForCollection value),
    Result serverError(ServerError value),
    Result insufficientPermissions(InsufficientPermissions value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class InsufficientPermissions implements DataSourceFailure {
  const factory InsufficientPermissions() = _$InsufficientPermissions;
}
