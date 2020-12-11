// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'customer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CustomerDTO _$CustomerDTOFromJson(Map<String, dynamic> json) {
  return _CustomerDTO.fromJson(json);
}

/// @nodoc
class _$CustomerDTOTearOff {
  const _$CustomerDTOTearOff();

// ignore: unused_element
  _CustomerDTO _private(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required int updatedAt,
      CustomerType type,
      @PhoneNumberConverter() PhoneNumber phone,
      String surname,
      int dateOfBirth,
      String email,
      String nrc,
      String employeeNum,
      String farmerId,
      String nationalId,
      String teamId,
      String teamName}) {
    return _CustomerDTO(
      id: id,
      name: name,
      updatedAt: updatedAt,
      type: type,
      phone: phone,
      surname: surname,
      dateOfBirth: dateOfBirth,
      email: email,
      nrc: nrc,
      employeeNum: employeeNum,
      farmerId: farmerId,
      nationalId: nationalId,
      teamId: teamId,
      teamName: teamName,
    );
  }

// ignore: unused_element
  CustomerDTO fromJson(Map<String, Object> json) {
    return CustomerDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CustomerDTO = _$CustomerDTOTearOff();

/// @nodoc
mixin _$CustomerDTO {
  @JsonKey(ignore: true)
  String get id;
  String get name;

  /// Timestamp when this customer was last updated (Locally or Remotely)
  int get updatedAt;
  CustomerType get type;
  @PhoneNumberConverter()
  PhoneNumber get phone;
  String get surname;
  int get dateOfBirth;
  String get email;
  String get nrc;
  String get employeeNum;
  String get farmerId;
  String get nationalId;

  /// If not null represents the id of the team for which this customers was created
// ignore: unused_element
  String get teamId;

  /// If not null represents the name of the team for which this customers was created
// ignore: unused_element
  String get teamName;

  Map<String, dynamic> toJson();
  $CustomerDTOCopyWith<CustomerDTO> get copyWith;
}

/// @nodoc
abstract class $CustomerDTOCopyWith<$Res> {
  factory $CustomerDTOCopyWith(
          CustomerDTO value, $Res Function(CustomerDTO) then) =
      _$CustomerDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      int updatedAt,
      CustomerType type,
      @PhoneNumberConverter() PhoneNumber phone,
      String surname,
      int dateOfBirth,
      String email,
      String nrc,
      String employeeNum,
      String farmerId,
      String nationalId,
      String teamId,
      String teamName});

  $PhoneNumberCopyWith<$Res> get phone;
}

/// @nodoc
class _$CustomerDTOCopyWithImpl<$Res> implements $CustomerDTOCopyWith<$Res> {
  _$CustomerDTOCopyWithImpl(this._value, this._then);

  final CustomerDTO _value;
  // ignore: unused_field
  final $Res Function(CustomerDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object updatedAt = freezed,
    Object type = freezed,
    Object phone = freezed,
    Object surname = freezed,
    Object dateOfBirth = freezed,
    Object email = freezed,
    Object nrc = freezed,
    Object employeeNum = freezed,
    Object farmerId = freezed,
    Object nationalId = freezed,
    Object teamId = freezed,
    Object teamName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as int,
      type: type == freezed ? _value.type : type as CustomerType,
      phone: phone == freezed ? _value.phone : phone as PhoneNumber,
      surname: surname == freezed ? _value.surname : surname as String,
      dateOfBirth:
          dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth as int,
      email: email == freezed ? _value.email : email as String,
      nrc: nrc == freezed ? _value.nrc : nrc as String,
      employeeNum:
          employeeNum == freezed ? _value.employeeNum : employeeNum as String,
      farmerId: farmerId == freezed ? _value.farmerId : farmerId as String,
      nationalId:
          nationalId == freezed ? _value.nationalId : nationalId as String,
      teamId: teamId == freezed ? _value.teamId : teamId as String,
      teamName: teamName == freezed ? _value.teamName : teamName as String,
    ));
  }

  @override
  $PhoneNumberCopyWith<$Res> get phone {
    if (_value.phone == null) {
      return null;
    }
    return $PhoneNumberCopyWith<$Res>(_value.phone, (value) {
      return _then(_value.copyWith(phone: value));
    });
  }
}

/// @nodoc
abstract class _$CustomerDTOCopyWith<$Res>
    implements $CustomerDTOCopyWith<$Res> {
  factory _$CustomerDTOCopyWith(
          _CustomerDTO value, $Res Function(_CustomerDTO) then) =
      __$CustomerDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      int updatedAt,
      CustomerType type,
      @PhoneNumberConverter() PhoneNumber phone,
      String surname,
      int dateOfBirth,
      String email,
      String nrc,
      String employeeNum,
      String farmerId,
      String nationalId,
      String teamId,
      String teamName});

  @override
  $PhoneNumberCopyWith<$Res> get phone;
}

/// @nodoc
class __$CustomerDTOCopyWithImpl<$Res> extends _$CustomerDTOCopyWithImpl<$Res>
    implements _$CustomerDTOCopyWith<$Res> {
  __$CustomerDTOCopyWithImpl(
      _CustomerDTO _value, $Res Function(_CustomerDTO) _then)
      : super(_value, (v) => _then(v as _CustomerDTO));

  @override
  _CustomerDTO get _value => super._value as _CustomerDTO;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object updatedAt = freezed,
    Object type = freezed,
    Object phone = freezed,
    Object surname = freezed,
    Object dateOfBirth = freezed,
    Object email = freezed,
    Object nrc = freezed,
    Object employeeNum = freezed,
    Object farmerId = freezed,
    Object nationalId = freezed,
    Object teamId = freezed,
    Object teamName = freezed,
  }) {
    return _then(_CustomerDTO(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as int,
      type: type == freezed ? _value.type : type as CustomerType,
      phone: phone == freezed ? _value.phone : phone as PhoneNumber,
      surname: surname == freezed ? _value.surname : surname as String,
      dateOfBirth:
          dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth as int,
      email: email == freezed ? _value.email : email as String,
      nrc: nrc == freezed ? _value.nrc : nrc as String,
      employeeNum:
          employeeNum == freezed ? _value.employeeNum : employeeNum as String,
      farmerId: farmerId == freezed ? _value.farmerId : farmerId as String,
      nationalId:
          nationalId == freezed ? _value.nationalId : nationalId as String,
      teamId: teamId == freezed ? _value.teamId : teamId as String,
      teamName: teamName == freezed ? _value.teamName : teamName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CustomerDTO extends _CustomerDTO {
  const _$_CustomerDTO(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.updatedAt,
      this.type,
      @PhoneNumberConverter() this.phone,
      this.surname,
      this.dateOfBirth,
      this.email,
      this.nrc,
      this.employeeNum,
      this.farmerId,
      this.nationalId,
      this.teamId,
      this.teamName})
      : assert(name != null),
        assert(updatedAt != null),
        super._();

  factory _$_CustomerDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomerDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override

  /// Timestamp when this customer was last updated (Locally or Remotely)
  final int updatedAt;
  @override
  final CustomerType type;
  @override
  @PhoneNumberConverter()
  final PhoneNumber phone;
  @override
  final String surname;
  @override
  final int dateOfBirth;
  @override
  final String email;
  @override
  final String nrc;
  @override
  final String employeeNum;
  @override
  final String farmerId;
  @override
  final String nationalId;
  @override

  /// If not null represents the id of the team for which this customers was created
// ignore: unused_element
  final String teamId;
  @override

  /// If not null represents the name of the team for which this customers was created
// ignore: unused_element
  final String teamName;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomerDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.nrc, nrc) ||
                const DeepCollectionEquality().equals(other.nrc, nrc)) &&
            (identical(other.employeeNum, employeeNum) ||
                const DeepCollectionEquality()
                    .equals(other.employeeNum, employeeNum)) &&
            (identical(other.farmerId, farmerId) ||
                const DeepCollectionEquality()
                    .equals(other.farmerId, farmerId)) &&
            (identical(other.nationalId, nationalId) ||
                const DeepCollectionEquality()
                    .equals(other.nationalId, nationalId)) &&
            (identical(other.teamId, teamId) ||
                const DeepCollectionEquality().equals(other.teamId, teamId)) &&
            (identical(other.teamName, teamName) ||
                const DeepCollectionEquality()
                    .equals(other.teamName, teamName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(nrc) ^
      const DeepCollectionEquality().hash(employeeNum) ^
      const DeepCollectionEquality().hash(farmerId) ^
      const DeepCollectionEquality().hash(nationalId) ^
      const DeepCollectionEquality().hash(teamId) ^
      const DeepCollectionEquality().hash(teamName);

  @override
  _$CustomerDTOCopyWith<_CustomerDTO> get copyWith =>
      __$CustomerDTOCopyWithImpl<_CustomerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomerDTOToJson(this);
  }
}

abstract class _CustomerDTO extends CustomerDTO {
  const _CustomerDTO._() : super._();
  const factory _CustomerDTO(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required int updatedAt,
      CustomerType type,
      @PhoneNumberConverter() PhoneNumber phone,
      String surname,
      int dateOfBirth,
      String email,
      String nrc,
      String employeeNum,
      String farmerId,
      String nationalId,
      String teamId,
      String teamName}) = _$_CustomerDTO;

  factory _CustomerDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override

  /// Timestamp when this customer was last updated (Locally or Remotely)
  int get updatedAt;
  @override
  CustomerType get type;
  @override
  @PhoneNumberConverter()
  PhoneNumber get phone;
  @override
  String get surname;
  @override
  int get dateOfBirth;
  @override
  String get email;
  @override
  String get nrc;
  @override
  String get employeeNum;
  @override
  String get farmerId;
  @override
  String get nationalId;
  @override

  /// If not null represents the id of the team for which this customers was created
// ignore: unused_element
  String get teamId;
  @override

  /// If not null represents the name of the team for which this customers was created
// ignore: unused_element
  String get teamName;
  @override
  _$CustomerDTOCopyWith<_CustomerDTO> get copyWith;
}
