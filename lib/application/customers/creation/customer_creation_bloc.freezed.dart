// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'customer_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CustomerCreationEventTearOff {
  const _$CustomerCreationEventTearOff();

// ignore: unused_element
  _SaveButtonPressed saveButtonPressed(
      {@required String customerName,
      @required String customerSurname,
      @required String countryCode,
      @required String phoneNumber}) {
    return _SaveButtonPressed(
      customerName: customerName,
      customerSurname: customerSurname,
      countryCode: countryCode,
      phoneNumber: phoneNumber,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CustomerCreationEvent = _$CustomerCreationEventTearOff();

/// @nodoc
mixin _$CustomerCreationEvent {
  /// Should not be null
  String get customerName;

  /// Should not be null
  String get customerSurname;

  /// Coutry code can have + sign or not
  String get countryCode;

  /// Phone number can be separated by spaces or not
  String get phoneNumber;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult saveButtonPressed(String customerName, String customerSurname,
            String countryCode, String phoneNumber),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult saveButtonPressed(String customerName, String customerSurname,
        String countryCode, String phoneNumber),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult saveButtonPressed(_SaveButtonPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult saveButtonPressed(_SaveButtonPressed value),
    @required TResult orElse(),
  });

  $CustomerCreationEventCopyWith<CustomerCreationEvent> get copyWith;
}

/// @nodoc
abstract class $CustomerCreationEventCopyWith<$Res> {
  factory $CustomerCreationEventCopyWith(CustomerCreationEvent value,
          $Res Function(CustomerCreationEvent) then) =
      _$CustomerCreationEventCopyWithImpl<$Res>;
  $Res call(
      {String customerName,
      String customerSurname,
      String countryCode,
      String phoneNumber});
}

/// @nodoc
class _$CustomerCreationEventCopyWithImpl<$Res>
    implements $CustomerCreationEventCopyWith<$Res> {
  _$CustomerCreationEventCopyWithImpl(this._value, this._then);

  final CustomerCreationEvent _value;
  // ignore: unused_field
  final $Res Function(CustomerCreationEvent) _then;

  @override
  $Res call({
    Object customerName = freezed,
    Object customerSurname = freezed,
    Object countryCode = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      customerName: customerName == freezed
          ? _value.customerName
          : customerName as String,
      customerSurname: customerSurname == freezed
          ? _value.customerSurname
          : customerSurname as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

/// @nodoc
abstract class _$SaveButtonPressedCopyWith<$Res>
    implements $CustomerCreationEventCopyWith<$Res> {
  factory _$SaveButtonPressedCopyWith(
          _SaveButtonPressed value, $Res Function(_SaveButtonPressed) then) =
      __$SaveButtonPressedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String customerName,
      String customerSurname,
      String countryCode,
      String phoneNumber});
}

/// @nodoc
class __$SaveButtonPressedCopyWithImpl<$Res>
    extends _$CustomerCreationEventCopyWithImpl<$Res>
    implements _$SaveButtonPressedCopyWith<$Res> {
  __$SaveButtonPressedCopyWithImpl(
      _SaveButtonPressed _value, $Res Function(_SaveButtonPressed) _then)
      : super(_value, (v) => _then(v as _SaveButtonPressed));

  @override
  _SaveButtonPressed get _value => super._value as _SaveButtonPressed;

  @override
  $Res call({
    Object customerName = freezed,
    Object customerSurname = freezed,
    Object countryCode = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_SaveButtonPressed(
      customerName: customerName == freezed
          ? _value.customerName
          : customerName as String,
      customerSurname: customerSurname == freezed
          ? _value.customerSurname
          : customerSurname as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

/// @nodoc
class _$_SaveButtonPressed implements _SaveButtonPressed {
  const _$_SaveButtonPressed(
      {@required this.customerName,
      @required this.customerSurname,
      @required this.countryCode,
      @required this.phoneNumber})
      : assert(customerName != null),
        assert(customerSurname != null),
        assert(countryCode != null),
        assert(phoneNumber != null);

  @override

  /// Should not be null
  final String customerName;
  @override

  /// Should not be null
  final String customerSurname;
  @override

  /// Coutry code can have + sign or not
  final String countryCode;
  @override

  /// Phone number can be separated by spaces or not
  final String phoneNumber;

  @override
  String toString() {
    return 'CustomerCreationEvent.saveButtonPressed(customerName: $customerName, customerSurname: $customerSurname, countryCode: $countryCode, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaveButtonPressed &&
            (identical(other.customerName, customerName) ||
                const DeepCollectionEquality()
                    .equals(other.customerName, customerName)) &&
            (identical(other.customerSurname, customerSurname) ||
                const DeepCollectionEquality()
                    .equals(other.customerSurname, customerSurname)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(customerName) ^
      const DeepCollectionEquality().hash(customerSurname) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(phoneNumber);

  @override
  _$SaveButtonPressedCopyWith<_SaveButtonPressed> get copyWith =>
      __$SaveButtonPressedCopyWithImpl<_SaveButtonPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult saveButtonPressed(String customerName, String customerSurname,
            String countryCode, String phoneNumber),
  }) {
    assert(saveButtonPressed != null);
    return saveButtonPressed(
        customerName, customerSurname, countryCode, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult saveButtonPressed(String customerName, String customerSurname,
        String countryCode, String phoneNumber),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saveButtonPressed != null) {
      return saveButtonPressed(
          customerName, customerSurname, countryCode, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult saveButtonPressed(_SaveButtonPressed value),
  }) {
    assert(saveButtonPressed != null);
    return saveButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult saveButtonPressed(_SaveButtonPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saveButtonPressed != null) {
      return saveButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _SaveButtonPressed implements CustomerCreationEvent {
  const factory _SaveButtonPressed(
      {@required String customerName,
      @required String customerSurname,
      @required String countryCode,
      @required String phoneNumber}) = _$_SaveButtonPressed;

  @override

  /// Should not be null
  String get customerName;
  @override

  /// Should not be null
  String get customerSurname;
  @override

  /// Coutry code can have + sign or not
  String get countryCode;
  @override

  /// Phone number can be separated by spaces or not
  String get phoneNumber;
  @override
  _$SaveButtonPressedCopyWith<_SaveButtonPressed> get copyWith;
}

/// @nodoc
class _$CustomerCreationStateTearOff {
  const _$CustomerCreationStateTearOff();

// ignore: unused_element
  _InitialStep initialStep() {
    return const _InitialStep();
  }

// ignore: unused_element
  _CreationFailure creationFailure(
      {@required CustomerRepositoryFailure failure}) {
    return _CreationFailure(
      failure: failure,
    );
  }

// ignore: unused_element
  _CreationInProgress creationInProgress() {
    return const _CreationInProgress();
  }

// ignore: unused_element
  _CreationSuccess creationSuccess() {
    return const _CreationSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $CustomerCreationState = _$CustomerCreationStateTearOff();

/// @nodoc
mixin _$CustomerCreationState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialStep(),
    @required TResult creationFailure(CustomerRepositoryFailure failure),
    @required TResult creationInProgress(),
    @required TResult creationSuccess(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialStep(),
    TResult creationFailure(CustomerRepositoryFailure failure),
    TResult creationInProgress(),
    TResult creationSuccess(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialStep(_InitialStep value),
    @required TResult creationFailure(_CreationFailure value),
    @required TResult creationInProgress(_CreationInProgress value),
    @required TResult creationSuccess(_CreationSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialStep(_InitialStep value),
    TResult creationFailure(_CreationFailure value),
    TResult creationInProgress(_CreationInProgress value),
    TResult creationSuccess(_CreationSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CustomerCreationStateCopyWith<$Res> {
  factory $CustomerCreationStateCopyWith(CustomerCreationState value,
          $Res Function(CustomerCreationState) then) =
      _$CustomerCreationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomerCreationStateCopyWithImpl<$Res>
    implements $CustomerCreationStateCopyWith<$Res> {
  _$CustomerCreationStateCopyWithImpl(this._value, this._then);

  final CustomerCreationState _value;
  // ignore: unused_field
  final $Res Function(CustomerCreationState) _then;
}

/// @nodoc
abstract class _$InitialStepCopyWith<$Res> {
  factory _$InitialStepCopyWith(
          _InitialStep value, $Res Function(_InitialStep) then) =
      __$InitialStepCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialStepCopyWithImpl<$Res>
    extends _$CustomerCreationStateCopyWithImpl<$Res>
    implements _$InitialStepCopyWith<$Res> {
  __$InitialStepCopyWithImpl(
      _InitialStep _value, $Res Function(_InitialStep) _then)
      : super(_value, (v) => _then(v as _InitialStep));

  @override
  _InitialStep get _value => super._value as _InitialStep;
}

/// @nodoc
class _$_InitialStep implements _InitialStep {
  const _$_InitialStep();

  @override
  String toString() {
    return 'CustomerCreationState.initialStep()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialStep);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialStep(),
    @required TResult creationFailure(CustomerRepositoryFailure failure),
    @required TResult creationInProgress(),
    @required TResult creationSuccess(),
  }) {
    assert(initialStep != null);
    assert(creationFailure != null);
    assert(creationInProgress != null);
    assert(creationSuccess != null);
    return initialStep();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialStep(),
    TResult creationFailure(CustomerRepositoryFailure failure),
    TResult creationInProgress(),
    TResult creationSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialStep != null) {
      return initialStep();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialStep(_InitialStep value),
    @required TResult creationFailure(_CreationFailure value),
    @required TResult creationInProgress(_CreationInProgress value),
    @required TResult creationSuccess(_CreationSuccess value),
  }) {
    assert(initialStep != null);
    assert(creationFailure != null);
    assert(creationInProgress != null);
    assert(creationSuccess != null);
    return initialStep(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialStep(_InitialStep value),
    TResult creationFailure(_CreationFailure value),
    TResult creationInProgress(_CreationInProgress value),
    TResult creationSuccess(_CreationSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialStep != null) {
      return initialStep(this);
    }
    return orElse();
  }
}

abstract class _InitialStep implements CustomerCreationState {
  const factory _InitialStep() = _$_InitialStep;
}

/// @nodoc
abstract class _$CreationFailureCopyWith<$Res> {
  factory _$CreationFailureCopyWith(
          _CreationFailure value, $Res Function(_CreationFailure) then) =
      __$CreationFailureCopyWithImpl<$Res>;
  $Res call({CustomerRepositoryFailure failure});

  $CustomerRepositoryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$CreationFailureCopyWithImpl<$Res>
    extends _$CustomerCreationStateCopyWithImpl<$Res>
    implements _$CreationFailureCopyWith<$Res> {
  __$CreationFailureCopyWithImpl(
      _CreationFailure _value, $Res Function(_CreationFailure) _then)
      : super(_value, (v) => _then(v as _CreationFailure));

  @override
  _CreationFailure get _value => super._value as _CreationFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_CreationFailure(
      failure: failure == freezed
          ? _value.failure
          : failure as CustomerRepositoryFailure,
    ));
  }

  @override
  $CustomerRepositoryFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $CustomerRepositoryFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_CreationFailure implements _CreationFailure {
  const _$_CreationFailure({@required this.failure}) : assert(failure != null);

  @override
  final CustomerRepositoryFailure failure;

  @override
  String toString() {
    return 'CustomerCreationState.creationFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreationFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$CreationFailureCopyWith<_CreationFailure> get copyWith =>
      __$CreationFailureCopyWithImpl<_CreationFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialStep(),
    @required TResult creationFailure(CustomerRepositoryFailure failure),
    @required TResult creationInProgress(),
    @required TResult creationSuccess(),
  }) {
    assert(initialStep != null);
    assert(creationFailure != null);
    assert(creationInProgress != null);
    assert(creationSuccess != null);
    return creationFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialStep(),
    TResult creationFailure(CustomerRepositoryFailure failure),
    TResult creationInProgress(),
    TResult creationSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (creationFailure != null) {
      return creationFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialStep(_InitialStep value),
    @required TResult creationFailure(_CreationFailure value),
    @required TResult creationInProgress(_CreationInProgress value),
    @required TResult creationSuccess(_CreationSuccess value),
  }) {
    assert(initialStep != null);
    assert(creationFailure != null);
    assert(creationInProgress != null);
    assert(creationSuccess != null);
    return creationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialStep(_InitialStep value),
    TResult creationFailure(_CreationFailure value),
    TResult creationInProgress(_CreationInProgress value),
    TResult creationSuccess(_CreationSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (creationFailure != null) {
      return creationFailure(this);
    }
    return orElse();
  }
}

abstract class _CreationFailure implements CustomerCreationState {
  const factory _CreationFailure(
      {@required CustomerRepositoryFailure failure}) = _$_CreationFailure;

  CustomerRepositoryFailure get failure;
  _$CreationFailureCopyWith<_CreationFailure> get copyWith;
}

/// @nodoc
abstract class _$CreationInProgressCopyWith<$Res> {
  factory _$CreationInProgressCopyWith(
          _CreationInProgress value, $Res Function(_CreationInProgress) then) =
      __$CreationInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreationInProgressCopyWithImpl<$Res>
    extends _$CustomerCreationStateCopyWithImpl<$Res>
    implements _$CreationInProgressCopyWith<$Res> {
  __$CreationInProgressCopyWithImpl(
      _CreationInProgress _value, $Res Function(_CreationInProgress) _then)
      : super(_value, (v) => _then(v as _CreationInProgress));

  @override
  _CreationInProgress get _value => super._value as _CreationInProgress;
}

/// @nodoc
class _$_CreationInProgress implements _CreationInProgress {
  const _$_CreationInProgress();

  @override
  String toString() {
    return 'CustomerCreationState.creationInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreationInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialStep(),
    @required TResult creationFailure(CustomerRepositoryFailure failure),
    @required TResult creationInProgress(),
    @required TResult creationSuccess(),
  }) {
    assert(initialStep != null);
    assert(creationFailure != null);
    assert(creationInProgress != null);
    assert(creationSuccess != null);
    return creationInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialStep(),
    TResult creationFailure(CustomerRepositoryFailure failure),
    TResult creationInProgress(),
    TResult creationSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (creationInProgress != null) {
      return creationInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialStep(_InitialStep value),
    @required TResult creationFailure(_CreationFailure value),
    @required TResult creationInProgress(_CreationInProgress value),
    @required TResult creationSuccess(_CreationSuccess value),
  }) {
    assert(initialStep != null);
    assert(creationFailure != null);
    assert(creationInProgress != null);
    assert(creationSuccess != null);
    return creationInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialStep(_InitialStep value),
    TResult creationFailure(_CreationFailure value),
    TResult creationInProgress(_CreationInProgress value),
    TResult creationSuccess(_CreationSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (creationInProgress != null) {
      return creationInProgress(this);
    }
    return orElse();
  }
}

abstract class _CreationInProgress implements CustomerCreationState {
  const factory _CreationInProgress() = _$_CreationInProgress;
}

/// @nodoc
abstract class _$CreationSuccessCopyWith<$Res> {
  factory _$CreationSuccessCopyWith(
          _CreationSuccess value, $Res Function(_CreationSuccess) then) =
      __$CreationSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreationSuccessCopyWithImpl<$Res>
    extends _$CustomerCreationStateCopyWithImpl<$Res>
    implements _$CreationSuccessCopyWith<$Res> {
  __$CreationSuccessCopyWithImpl(
      _CreationSuccess _value, $Res Function(_CreationSuccess) _then)
      : super(_value, (v) => _then(v as _CreationSuccess));

  @override
  _CreationSuccess get _value => super._value as _CreationSuccess;
}

/// @nodoc
class _$_CreationSuccess implements _CreationSuccess {
  const _$_CreationSuccess();

  @override
  String toString() {
    return 'CustomerCreationState.creationSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreationSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialStep(),
    @required TResult creationFailure(CustomerRepositoryFailure failure),
    @required TResult creationInProgress(),
    @required TResult creationSuccess(),
  }) {
    assert(initialStep != null);
    assert(creationFailure != null);
    assert(creationInProgress != null);
    assert(creationSuccess != null);
    return creationSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialStep(),
    TResult creationFailure(CustomerRepositoryFailure failure),
    TResult creationInProgress(),
    TResult creationSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (creationSuccess != null) {
      return creationSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialStep(_InitialStep value),
    @required TResult creationFailure(_CreationFailure value),
    @required TResult creationInProgress(_CreationInProgress value),
    @required TResult creationSuccess(_CreationSuccess value),
  }) {
    assert(initialStep != null);
    assert(creationFailure != null);
    assert(creationInProgress != null);
    assert(creationSuccess != null);
    return creationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialStep(_InitialStep value),
    TResult creationFailure(_CreationFailure value),
    TResult creationInProgress(_CreationInProgress value),
    TResult creationSuccess(_CreationSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (creationSuccess != null) {
      return creationSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreationSuccess implements CustomerCreationState {
  const factory _CreationSuccess() = _$_CreationSuccess;
}
