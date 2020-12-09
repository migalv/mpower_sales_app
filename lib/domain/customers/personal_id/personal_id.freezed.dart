// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'personal_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PersonalIdTearOff {
  const _$PersonalIdTearOff();

// ignore: unused_element
  NRC nrc({@required String nrc}) {
    return NRC(
      nrc: nrc,
    );
  }

// ignore: unused_element
  EmployeeNum employeeNum({@required String employeeNum}) {
    return EmployeeNum(
      employeeNum: employeeNum,
    );
  }

// ignore: unused_element
  FarmerId farmerId({@required String farmerId}) {
    return FarmerId(
      farmerId: farmerId,
    );
  }

// ignore: unused_element
  NationalId nationalId({@required String nationalId}) {
    return NationalId(
      nationalId: nationalId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PersonalId = _$PersonalIdTearOff();

/// @nodoc
mixin _$PersonalId {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nrc(String nrc),
    @required TResult employeeNum(String employeeNum),
    @required TResult farmerId(String farmerId),
    @required TResult nationalId(String nationalId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nrc(String nrc),
    TResult employeeNum(String employeeNum),
    TResult farmerId(String farmerId),
    TResult nationalId(String nationalId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nrc(NRC value),
    @required TResult employeeNum(EmployeeNum value),
    @required TResult farmerId(FarmerId value),
    @required TResult nationalId(NationalId value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nrc(NRC value),
    TResult employeeNum(EmployeeNum value),
    TResult farmerId(FarmerId value),
    TResult nationalId(NationalId value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PersonalIdCopyWith<$Res> {
  factory $PersonalIdCopyWith(
          PersonalId value, $Res Function(PersonalId) then) =
      _$PersonalIdCopyWithImpl<$Res>;
}

/// @nodoc
class _$PersonalIdCopyWithImpl<$Res> implements $PersonalIdCopyWith<$Res> {
  _$PersonalIdCopyWithImpl(this._value, this._then);

  final PersonalId _value;
  // ignore: unused_field
  final $Res Function(PersonalId) _then;
}

/// @nodoc
abstract class $NRCCopyWith<$Res> {
  factory $NRCCopyWith(NRC value, $Res Function(NRC) then) =
      _$NRCCopyWithImpl<$Res>;
  $Res call({String nrc});
}

/// @nodoc
class _$NRCCopyWithImpl<$Res> extends _$PersonalIdCopyWithImpl<$Res>
    implements $NRCCopyWith<$Res> {
  _$NRCCopyWithImpl(NRC _value, $Res Function(NRC) _then)
      : super(_value, (v) => _then(v as NRC));

  @override
  NRC get _value => super._value as NRC;

  @override
  $Res call({
    Object nrc = freezed,
  }) {
    return _then(NRC(
      nrc: nrc == freezed ? _value.nrc : nrc as String,
    ));
  }
}

/// @nodoc
class _$NRC implements NRC {
  const _$NRC({@required this.nrc}) : assert(nrc != null);

  @override
  final String nrc;

  @override
  String toString() {
    return 'PersonalId.nrc(nrc: $nrc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NRC &&
            (identical(other.nrc, nrc) ||
                const DeepCollectionEquality().equals(other.nrc, nrc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nrc);

  @override
  $NRCCopyWith<NRC> get copyWith => _$NRCCopyWithImpl<NRC>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nrc(String nrc),
    @required TResult employeeNum(String employeeNum),
    @required TResult farmerId(String farmerId),
    @required TResult nationalId(String nationalId),
  }) {
    assert(nrc != null);
    assert(employeeNum != null);
    assert(farmerId != null);
    assert(nationalId != null);
    return nrc(this.nrc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nrc(String nrc),
    TResult employeeNum(String employeeNum),
    TResult farmerId(String farmerId),
    TResult nationalId(String nationalId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nrc != null) {
      return nrc(this.nrc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nrc(NRC value),
    @required TResult employeeNum(EmployeeNum value),
    @required TResult farmerId(FarmerId value),
    @required TResult nationalId(NationalId value),
  }) {
    assert(nrc != null);
    assert(employeeNum != null);
    assert(farmerId != null);
    assert(nationalId != null);
    return nrc(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nrc(NRC value),
    TResult employeeNum(EmployeeNum value),
    TResult farmerId(FarmerId value),
    TResult nationalId(NationalId value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nrc != null) {
      return nrc(this);
    }
    return orElse();
  }
}

abstract class NRC implements PersonalId {
  const factory NRC({@required String nrc}) = _$NRC;

  String get nrc;
  $NRCCopyWith<NRC> get copyWith;
}

/// @nodoc
abstract class $EmployeeNumCopyWith<$Res> {
  factory $EmployeeNumCopyWith(
          EmployeeNum value, $Res Function(EmployeeNum) then) =
      _$EmployeeNumCopyWithImpl<$Res>;
  $Res call({String employeeNum});
}

/// @nodoc
class _$EmployeeNumCopyWithImpl<$Res> extends _$PersonalIdCopyWithImpl<$Res>
    implements $EmployeeNumCopyWith<$Res> {
  _$EmployeeNumCopyWithImpl(
      EmployeeNum _value, $Res Function(EmployeeNum) _then)
      : super(_value, (v) => _then(v as EmployeeNum));

  @override
  EmployeeNum get _value => super._value as EmployeeNum;

  @override
  $Res call({
    Object employeeNum = freezed,
  }) {
    return _then(EmployeeNum(
      employeeNum:
          employeeNum == freezed ? _value.employeeNum : employeeNum as String,
    ));
  }
}

/// @nodoc
class _$EmployeeNum implements EmployeeNum {
  const _$EmployeeNum({@required this.employeeNum})
      : assert(employeeNum != null);

  @override
  final String employeeNum;

  @override
  String toString() {
    return 'PersonalId.employeeNum(employeeNum: $employeeNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmployeeNum &&
            (identical(other.employeeNum, employeeNum) ||
                const DeepCollectionEquality()
                    .equals(other.employeeNum, employeeNum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(employeeNum);

  @override
  $EmployeeNumCopyWith<EmployeeNum> get copyWith =>
      _$EmployeeNumCopyWithImpl<EmployeeNum>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nrc(String nrc),
    @required TResult employeeNum(String employeeNum),
    @required TResult farmerId(String farmerId),
    @required TResult nationalId(String nationalId),
  }) {
    assert(nrc != null);
    assert(employeeNum != null);
    assert(farmerId != null);
    assert(nationalId != null);
    return employeeNum(this.employeeNum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nrc(String nrc),
    TResult employeeNum(String employeeNum),
    TResult farmerId(String farmerId),
    TResult nationalId(String nationalId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (employeeNum != null) {
      return employeeNum(this.employeeNum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nrc(NRC value),
    @required TResult employeeNum(EmployeeNum value),
    @required TResult farmerId(FarmerId value),
    @required TResult nationalId(NationalId value),
  }) {
    assert(nrc != null);
    assert(employeeNum != null);
    assert(farmerId != null);
    assert(nationalId != null);
    return employeeNum(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nrc(NRC value),
    TResult employeeNum(EmployeeNum value),
    TResult farmerId(FarmerId value),
    TResult nationalId(NationalId value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (employeeNum != null) {
      return employeeNum(this);
    }
    return orElse();
  }
}

abstract class EmployeeNum implements PersonalId {
  const factory EmployeeNum({@required String employeeNum}) = _$EmployeeNum;

  String get employeeNum;
  $EmployeeNumCopyWith<EmployeeNum> get copyWith;
}

/// @nodoc
abstract class $FarmerIdCopyWith<$Res> {
  factory $FarmerIdCopyWith(FarmerId value, $Res Function(FarmerId) then) =
      _$FarmerIdCopyWithImpl<$Res>;
  $Res call({String farmerId});
}

/// @nodoc
class _$FarmerIdCopyWithImpl<$Res> extends _$PersonalIdCopyWithImpl<$Res>
    implements $FarmerIdCopyWith<$Res> {
  _$FarmerIdCopyWithImpl(FarmerId _value, $Res Function(FarmerId) _then)
      : super(_value, (v) => _then(v as FarmerId));

  @override
  FarmerId get _value => super._value as FarmerId;

  @override
  $Res call({
    Object farmerId = freezed,
  }) {
    return _then(FarmerId(
      farmerId: farmerId == freezed ? _value.farmerId : farmerId as String,
    ));
  }
}

/// @nodoc
class _$FarmerId implements FarmerId {
  const _$FarmerId({@required this.farmerId}) : assert(farmerId != null);

  @override
  final String farmerId;

  @override
  String toString() {
    return 'PersonalId.farmerId(farmerId: $farmerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FarmerId &&
            (identical(other.farmerId, farmerId) ||
                const DeepCollectionEquality()
                    .equals(other.farmerId, farmerId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(farmerId);

  @override
  $FarmerIdCopyWith<FarmerId> get copyWith =>
      _$FarmerIdCopyWithImpl<FarmerId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nrc(String nrc),
    @required TResult employeeNum(String employeeNum),
    @required TResult farmerId(String farmerId),
    @required TResult nationalId(String nationalId),
  }) {
    assert(nrc != null);
    assert(employeeNum != null);
    assert(farmerId != null);
    assert(nationalId != null);
    return farmerId(this.farmerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nrc(String nrc),
    TResult employeeNum(String employeeNum),
    TResult farmerId(String farmerId),
    TResult nationalId(String nationalId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (farmerId != null) {
      return farmerId(this.farmerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nrc(NRC value),
    @required TResult employeeNum(EmployeeNum value),
    @required TResult farmerId(FarmerId value),
    @required TResult nationalId(NationalId value),
  }) {
    assert(nrc != null);
    assert(employeeNum != null);
    assert(farmerId != null);
    assert(nationalId != null);
    return farmerId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nrc(NRC value),
    TResult employeeNum(EmployeeNum value),
    TResult farmerId(FarmerId value),
    TResult nationalId(NationalId value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (farmerId != null) {
      return farmerId(this);
    }
    return orElse();
  }
}

abstract class FarmerId implements PersonalId {
  const factory FarmerId({@required String farmerId}) = _$FarmerId;

  String get farmerId;
  $FarmerIdCopyWith<FarmerId> get copyWith;
}

/// @nodoc
abstract class $NationalIdCopyWith<$Res> {
  factory $NationalIdCopyWith(
          NationalId value, $Res Function(NationalId) then) =
      _$NationalIdCopyWithImpl<$Res>;
  $Res call({String nationalId});
}

/// @nodoc
class _$NationalIdCopyWithImpl<$Res> extends _$PersonalIdCopyWithImpl<$Res>
    implements $NationalIdCopyWith<$Res> {
  _$NationalIdCopyWithImpl(NationalId _value, $Res Function(NationalId) _then)
      : super(_value, (v) => _then(v as NationalId));

  @override
  NationalId get _value => super._value as NationalId;

  @override
  $Res call({
    Object nationalId = freezed,
  }) {
    return _then(NationalId(
      nationalId:
          nationalId == freezed ? _value.nationalId : nationalId as String,
    ));
  }
}

/// @nodoc
class _$NationalId implements NationalId {
  const _$NationalId({@required this.nationalId}) : assert(nationalId != null);

  @override
  final String nationalId;

  @override
  String toString() {
    return 'PersonalId.nationalId(nationalId: $nationalId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NationalId &&
            (identical(other.nationalId, nationalId) ||
                const DeepCollectionEquality()
                    .equals(other.nationalId, nationalId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nationalId);

  @override
  $NationalIdCopyWith<NationalId> get copyWith =>
      _$NationalIdCopyWithImpl<NationalId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nrc(String nrc),
    @required TResult employeeNum(String employeeNum),
    @required TResult farmerId(String farmerId),
    @required TResult nationalId(String nationalId),
  }) {
    assert(nrc != null);
    assert(employeeNum != null);
    assert(farmerId != null);
    assert(nationalId != null);
    return nationalId(this.nationalId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nrc(String nrc),
    TResult employeeNum(String employeeNum),
    TResult farmerId(String farmerId),
    TResult nationalId(String nationalId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nationalId != null) {
      return nationalId(this.nationalId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nrc(NRC value),
    @required TResult employeeNum(EmployeeNum value),
    @required TResult farmerId(FarmerId value),
    @required TResult nationalId(NationalId value),
  }) {
    assert(nrc != null);
    assert(employeeNum != null);
    assert(farmerId != null);
    assert(nationalId != null);
    return nationalId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nrc(NRC value),
    TResult employeeNum(EmployeeNum value),
    TResult farmerId(FarmerId value),
    TResult nationalId(NationalId value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nationalId != null) {
      return nationalId(this);
    }
    return orElse();
  }
}

abstract class NationalId implements PersonalId {
  const factory NationalId({@required String nationalId}) = _$NationalId;

  String get nationalId;
  $NationalIdCopyWith<NationalId> get copyWith;
}
