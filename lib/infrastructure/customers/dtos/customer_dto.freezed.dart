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
  _CustomerDTO _(
      {@required String id,
      @required String name,
      @required @PhoneNumberConverter() PhoneNumber phoneNumber,
      @required CustomerType type,
      String lastName,
      int birthDate,
      String nrc,
      String employeeNum,
      String farmerId,
      String nationalId}) {
    return _CustomerDTO(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      type: type,
      lastName: lastName,
      birthDate: birthDate,
      nrc: nrc,
      employeeNum: employeeNum,
      farmerId: farmerId,
      nationalId: nationalId,
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
  String get id;
  String get name;
  @PhoneNumberConverter()
  PhoneNumber get phoneNumber;
  CustomerType get type;
  String get lastName;
  int get birthDate;
  String get nrc;
  String get employeeNum;
  String get farmerId;
  String get nationalId;

  Map<String, dynamic> toJson();
  $CustomerDTOCopyWith<CustomerDTO> get copyWith;
}

/// @nodoc
abstract class $CustomerDTOCopyWith<$Res> {
  factory $CustomerDTOCopyWith(
          CustomerDTO value, $Res Function(CustomerDTO) then) =
      _$CustomerDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @PhoneNumberConverter() PhoneNumber phoneNumber,
      CustomerType type,
      String lastName,
      int birthDate,
      String nrc,
      String employeeNum,
      String farmerId,
      String nationalId});

  $PhoneNumberCopyWith<$Res> get phoneNumber;
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
    Object phoneNumber = freezed,
    Object type = freezed,
    Object lastName = freezed,
    Object birthDate = freezed,
    Object nrc = freezed,
    Object employeeNum = freezed,
    Object farmerId = freezed,
    Object nationalId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      type: type == freezed ? _value.type : type as CustomerType,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      birthDate: birthDate == freezed ? _value.birthDate : birthDate as int,
      nrc: nrc == freezed ? _value.nrc : nrc as String,
      employeeNum:
          employeeNum == freezed ? _value.employeeNum : employeeNum as String,
      farmerId: farmerId == freezed ? _value.farmerId : farmerId as String,
      nationalId:
          nationalId == freezed ? _value.nationalId : nationalId as String,
    ));
  }

  @override
  $PhoneNumberCopyWith<$Res> get phoneNumber {
    if (_value.phoneNumber == null) {
      return null;
    }
    return $PhoneNumberCopyWith<$Res>(_value.phoneNumber, (value) {
      return _then(_value.copyWith(phoneNumber: value));
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
      {String id,
      String name,
      @PhoneNumberConverter() PhoneNumber phoneNumber,
      CustomerType type,
      String lastName,
      int birthDate,
      String nrc,
      String employeeNum,
      String farmerId,
      String nationalId});

  @override
  $PhoneNumberCopyWith<$Res> get phoneNumber;
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
    Object phoneNumber = freezed,
    Object type = freezed,
    Object lastName = freezed,
    Object birthDate = freezed,
    Object nrc = freezed,
    Object employeeNum = freezed,
    Object farmerId = freezed,
    Object nationalId = freezed,
  }) {
    return _then(_CustomerDTO(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      type: type == freezed ? _value.type : type as CustomerType,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      birthDate: birthDate == freezed ? _value.birthDate : birthDate as int,
      nrc: nrc == freezed ? _value.nrc : nrc as String,
      employeeNum:
          employeeNum == freezed ? _value.employeeNum : employeeNum as String,
      farmerId: farmerId == freezed ? _value.farmerId : farmerId as String,
      nationalId:
          nationalId == freezed ? _value.nationalId : nationalId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CustomerDTO implements _CustomerDTO {
  const _$_CustomerDTO(
      {@required this.id,
      @required this.name,
      @required @PhoneNumberConverter() this.phoneNumber,
      @required this.type,
      this.lastName,
      this.birthDate,
      this.nrc,
      this.employeeNum,
      this.farmerId,
      this.nationalId})
      : assert(id != null),
        assert(name != null),
        assert(phoneNumber != null),
        assert(type != null);

  factory _$_CustomerDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomerDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @PhoneNumberConverter()
  final PhoneNumber phoneNumber;
  @override
  final CustomerType type;
  @override
  final String lastName;
  @override
  final int birthDate;
  @override
  final String nrc;
  @override
  final String employeeNum;
  @override
  final String farmerId;
  @override
  final String nationalId;

  @override
  String toString() {
    return 'CustomerDTO._(id: $id, name: $name, phoneNumber: $phoneNumber, type: $type, lastName: $lastName, birthDate: $birthDate, nrc: $nrc, employeeNum: $employeeNum, farmerId: $farmerId, nationalId: $nationalId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomerDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
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
                    .equals(other.nationalId, nationalId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(nrc) ^
      const DeepCollectionEquality().hash(employeeNum) ^
      const DeepCollectionEquality().hash(farmerId) ^
      const DeepCollectionEquality().hash(nationalId);

  @override
  _$CustomerDTOCopyWith<_CustomerDTO> get copyWith =>
      __$CustomerDTOCopyWithImpl<_CustomerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomerDTOToJson(this);
  }
}

abstract class _CustomerDTO implements CustomerDTO {
  const factory _CustomerDTO(
      {@required String id,
      @required String name,
      @required @PhoneNumberConverter() PhoneNumber phoneNumber,
      @required CustomerType type,
      String lastName,
      int birthDate,
      String nrc,
      String employeeNum,
      String farmerId,
      String nationalId}) = _$_CustomerDTO;

  factory _CustomerDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerDTO.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @PhoneNumberConverter()
  PhoneNumber get phoneNumber;
  @override
  CustomerType get type;
  @override
  String get lastName;
  @override
  int get birthDate;
  @override
  String get nrc;
  @override
  String get employeeNum;
  @override
  String get farmerId;
  @override
  String get nationalId;
  @override
  _$CustomerDTOCopyWith<_CustomerDTO> get copyWith;
}
