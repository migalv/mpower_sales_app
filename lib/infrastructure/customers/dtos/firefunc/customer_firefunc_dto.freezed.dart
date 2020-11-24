// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'customer_firefunc_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CustomerFireFuncDTO _$CustomerFireFuncDTOFromJson(Map<String, dynamic> json) {
  return _CustomerFireFuncDTO.fromJson(json);
}

/// @nodoc
class _$CustomerFireFuncDTOTearOff {
  const _$CustomerFireFuncDTOTearOff();

// ignore: unused_element
  _CustomerFireFuncDTO _(
      {@required String customerId,
      @required String name,
      @required String teamId,
      @required String teamName,
      String surname,
      String nrc,
      String employeeNum,
      String nationalId,
      @required int type}) {
    return _CustomerFireFuncDTO(
      customerId: customerId,
      name: name,
      teamId: teamId,
      teamName: teamName,
      surname: surname,
      nrc: nrc,
      employeeNum: employeeNum,
      nationalId: nationalId,
      type: type,
    );
  }

// ignore: unused_element
  CustomerFireFuncDTO fromJson(Map<String, Object> json) {
    return CustomerFireFuncDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CustomerFireFuncDTO = _$CustomerFireFuncDTOTearOff();

/// @nodoc
mixin _$CustomerFireFuncDTO {
  String get customerId;
  String get name;
  String get teamId;
  String get teamName;
  String get surname;
  String get nrc;
  String get employeeNum;
  String get nationalId;

  /// The type of customer (0: Person, 1: Company)
  int get type;

  Map<String, dynamic> toJson();
  $CustomerFireFuncDTOCopyWith<CustomerFireFuncDTO> get copyWith;
}

/// @nodoc
abstract class $CustomerFireFuncDTOCopyWith<$Res> {
  factory $CustomerFireFuncDTOCopyWith(
          CustomerFireFuncDTO value, $Res Function(CustomerFireFuncDTO) then) =
      _$CustomerFireFuncDTOCopyWithImpl<$Res>;
  $Res call(
      {String customerId,
      String name,
      String teamId,
      String teamName,
      String surname,
      String nrc,
      String employeeNum,
      String nationalId,
      int type});
}

/// @nodoc
class _$CustomerFireFuncDTOCopyWithImpl<$Res>
    implements $CustomerFireFuncDTOCopyWith<$Res> {
  _$CustomerFireFuncDTOCopyWithImpl(this._value, this._then);

  final CustomerFireFuncDTO _value;
  // ignore: unused_field
  final $Res Function(CustomerFireFuncDTO) _then;

  @override
  $Res call({
    Object customerId = freezed,
    Object name = freezed,
    Object teamId = freezed,
    Object teamName = freezed,
    Object surname = freezed,
    Object nrc = freezed,
    Object employeeNum = freezed,
    Object nationalId = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      customerId:
          customerId == freezed ? _value.customerId : customerId as String,
      name: name == freezed ? _value.name : name as String,
      teamId: teamId == freezed ? _value.teamId : teamId as String,
      teamName: teamName == freezed ? _value.teamName : teamName as String,
      surname: surname == freezed ? _value.surname : surname as String,
      nrc: nrc == freezed ? _value.nrc : nrc as String,
      employeeNum:
          employeeNum == freezed ? _value.employeeNum : employeeNum as String,
      nationalId:
          nationalId == freezed ? _value.nationalId : nationalId as String,
      type: type == freezed ? _value.type : type as int,
    ));
  }
}

/// @nodoc
abstract class _$CustomerFireFuncDTOCopyWith<$Res>
    implements $CustomerFireFuncDTOCopyWith<$Res> {
  factory _$CustomerFireFuncDTOCopyWith(_CustomerFireFuncDTO value,
          $Res Function(_CustomerFireFuncDTO) then) =
      __$CustomerFireFuncDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String customerId,
      String name,
      String teamId,
      String teamName,
      String surname,
      String nrc,
      String employeeNum,
      String nationalId,
      int type});
}

/// @nodoc
class __$CustomerFireFuncDTOCopyWithImpl<$Res>
    extends _$CustomerFireFuncDTOCopyWithImpl<$Res>
    implements _$CustomerFireFuncDTOCopyWith<$Res> {
  __$CustomerFireFuncDTOCopyWithImpl(
      _CustomerFireFuncDTO _value, $Res Function(_CustomerFireFuncDTO) _then)
      : super(_value, (v) => _then(v as _CustomerFireFuncDTO));

  @override
  _CustomerFireFuncDTO get _value => super._value as _CustomerFireFuncDTO;

  @override
  $Res call({
    Object customerId = freezed,
    Object name = freezed,
    Object teamId = freezed,
    Object teamName = freezed,
    Object surname = freezed,
    Object nrc = freezed,
    Object employeeNum = freezed,
    Object nationalId = freezed,
    Object type = freezed,
  }) {
    return _then(_CustomerFireFuncDTO(
      customerId:
          customerId == freezed ? _value.customerId : customerId as String,
      name: name == freezed ? _value.name : name as String,
      teamId: teamId == freezed ? _value.teamId : teamId as String,
      teamName: teamName == freezed ? _value.teamName : teamName as String,
      surname: surname == freezed ? _value.surname : surname as String,
      nrc: nrc == freezed ? _value.nrc : nrc as String,
      employeeNum:
          employeeNum == freezed ? _value.employeeNum : employeeNum as String,
      nationalId:
          nationalId == freezed ? _value.nationalId : nationalId as String,
      type: type == freezed ? _value.type : type as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CustomerFireFuncDTO implements _CustomerFireFuncDTO {
  _$_CustomerFireFuncDTO(
      {@required this.customerId,
      @required this.name,
      @required this.teamId,
      @required this.teamName,
      this.surname,
      this.nrc,
      this.employeeNum,
      this.nationalId,
      @required this.type})
      : assert(customerId != null),
        assert(name != null),
        assert(teamId != null),
        assert(teamName != null),
        assert(type != null);

  factory _$_CustomerFireFuncDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomerFireFuncDTOFromJson(json);

  @override
  final String customerId;
  @override
  final String name;
  @override
  final String teamId;
  @override
  final String teamName;
  @override
  final String surname;
  @override
  final String nrc;
  @override
  final String employeeNum;
  @override
  final String nationalId;
  @override

  /// The type of customer (0: Person, 1: Company)
  final int type;

  @override
  String toString() {
    return 'CustomerFireFuncDTO._(customerId: $customerId, name: $name, teamId: $teamId, teamName: $teamName, surname: $surname, nrc: $nrc, employeeNum: $employeeNum, nationalId: $nationalId, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomerFireFuncDTO &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.teamId, teamId) ||
                const DeepCollectionEquality().equals(other.teamId, teamId)) &&
            (identical(other.teamName, teamName) ||
                const DeepCollectionEquality()
                    .equals(other.teamName, teamName)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.nrc, nrc) ||
                const DeepCollectionEquality().equals(other.nrc, nrc)) &&
            (identical(other.employeeNum, employeeNum) ||
                const DeepCollectionEquality()
                    .equals(other.employeeNum, employeeNum)) &&
            (identical(other.nationalId, nationalId) ||
                const DeepCollectionEquality()
                    .equals(other.nationalId, nationalId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(teamId) ^
      const DeepCollectionEquality().hash(teamName) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(nrc) ^
      const DeepCollectionEquality().hash(employeeNum) ^
      const DeepCollectionEquality().hash(nationalId) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$CustomerFireFuncDTOCopyWith<_CustomerFireFuncDTO> get copyWith =>
      __$CustomerFireFuncDTOCopyWithImpl<_CustomerFireFuncDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomerFireFuncDTOToJson(this);
  }
}

abstract class _CustomerFireFuncDTO implements CustomerFireFuncDTO {
  factory _CustomerFireFuncDTO(
      {@required String customerId,
      @required String name,
      @required String teamId,
      @required String teamName,
      String surname,
      String nrc,
      String employeeNum,
      String nationalId,
      @required int type}) = _$_CustomerFireFuncDTO;

  factory _CustomerFireFuncDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerFireFuncDTO.fromJson;

  @override
  String get customerId;
  @override
  String get name;
  @override
  String get teamId;
  @override
  String get teamName;
  @override
  String get surname;
  @override
  String get nrc;
  @override
  String get employeeNum;
  @override
  String get nationalId;
  @override

  /// The type of customer (0: Person, 1: Company)
  int get type;
  @override
  _$CustomerFireFuncDTOCopyWith<_CustomerFireFuncDTO> get copyWith;
}
