// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'customer_firestore_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CustomerFirestoreDTO _$CustomerFirestoreDTOFromJson(Map<String, dynamic> json) {
  return _CustomerFirestoreDTO.fromJson(json);
}

/// @nodoc
class _$CustomerFirestoreDTOTearOff {
  const _$CustomerFirestoreDTOTearOff();

// ignore: unused_element
  _CustomerFirestoreDTO call(
      {@required @JsonKey(ignore: true) String id,
      @required String name,
      @required @JsonKey(name: 'availableTo') Map<String, dynamic> availableTo,
      @required int createdAt,
      @required String createdBy,
      @required String createdByName,
      @required String lastUpdatedBy,
      @required String lastUpdatedByName,
      @required int type,
      String surname,
      String farmerId,
      String employeeNum,
      String nrc,
      int dateOfBirth,
      String email,
      @PhoneNumberConverter() PhoneNumber phone}) {
    return _CustomerFirestoreDTO(
      id: id,
      name: name,
      availableTo: availableTo,
      createdAt: createdAt,
      createdBy: createdBy,
      createdByName: createdByName,
      lastUpdatedBy: lastUpdatedBy,
      lastUpdatedByName: lastUpdatedByName,
      type: type,
      surname: surname,
      farmerId: farmerId,
      employeeNum: employeeNum,
      nrc: nrc,
      dateOfBirth: dateOfBirth,
      email: email,
      phone: phone,
    );
  }

// ignore: unused_element
  CustomerFirestoreDTO fromJson(Map<String, Object> json) {
    return CustomerFirestoreDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CustomerFirestoreDTO = _$CustomerFirestoreDTOTearOff();

/// @nodoc
mixin _$CustomerFirestoreDTO {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  @JsonKey(name: 'availableTo')
  Map<String, dynamic> get availableTo;
  int get createdAt;
  String get createdBy;
  String get createdByName;
  String get lastUpdatedBy;
  String get lastUpdatedByName;
  int get type;
  String get surname;
  String get farmerId;
  String get employeeNum;
  String get nrc;
  int get dateOfBirth;
  String get email;
  @PhoneNumberConverter()
  PhoneNumber get phone;

  Map<String, dynamic> toJson();
  $CustomerFirestoreDTOCopyWith<CustomerFirestoreDTO> get copyWith;
}

/// @nodoc
abstract class $CustomerFirestoreDTOCopyWith<$Res> {
  factory $CustomerFirestoreDTOCopyWith(CustomerFirestoreDTO value,
          $Res Function(CustomerFirestoreDTO) then) =
      _$CustomerFirestoreDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      @JsonKey(name: 'availableTo') Map<String, dynamic> availableTo,
      int createdAt,
      String createdBy,
      String createdByName,
      String lastUpdatedBy,
      String lastUpdatedByName,
      int type,
      String surname,
      String farmerId,
      String employeeNum,
      String nrc,
      int dateOfBirth,
      String email,
      @PhoneNumberConverter() PhoneNumber phone});

  $PhoneNumberCopyWith<$Res> get phone;
}

/// @nodoc
class _$CustomerFirestoreDTOCopyWithImpl<$Res>
    implements $CustomerFirestoreDTOCopyWith<$Res> {
  _$CustomerFirestoreDTOCopyWithImpl(this._value, this._then);

  final CustomerFirestoreDTO _value;
  // ignore: unused_field
  final $Res Function(CustomerFirestoreDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object availableTo = freezed,
    Object createdAt = freezed,
    Object createdBy = freezed,
    Object createdByName = freezed,
    Object lastUpdatedBy = freezed,
    Object lastUpdatedByName = freezed,
    Object type = freezed,
    Object surname = freezed,
    Object farmerId = freezed,
    Object employeeNum = freezed,
    Object nrc = freezed,
    Object dateOfBirth = freezed,
    Object email = freezed,
    Object phone = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      availableTo: availableTo == freezed
          ? _value.availableTo
          : availableTo as Map<String, dynamic>,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as int,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
      createdByName: createdByName == freezed
          ? _value.createdByName
          : createdByName as String,
      lastUpdatedBy: lastUpdatedBy == freezed
          ? _value.lastUpdatedBy
          : lastUpdatedBy as String,
      lastUpdatedByName: lastUpdatedByName == freezed
          ? _value.lastUpdatedByName
          : lastUpdatedByName as String,
      type: type == freezed ? _value.type : type as int,
      surname: surname == freezed ? _value.surname : surname as String,
      farmerId: farmerId == freezed ? _value.farmerId : farmerId as String,
      employeeNum:
          employeeNum == freezed ? _value.employeeNum : employeeNum as String,
      nrc: nrc == freezed ? _value.nrc : nrc as String,
      dateOfBirth:
          dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth as int,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as PhoneNumber,
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
abstract class _$CustomerFirestoreDTOCopyWith<$Res>
    implements $CustomerFirestoreDTOCopyWith<$Res> {
  factory _$CustomerFirestoreDTOCopyWith(_CustomerFirestoreDTO value,
          $Res Function(_CustomerFirestoreDTO) then) =
      __$CustomerFirestoreDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      @JsonKey(name: 'availableTo') Map<String, dynamic> availableTo,
      int createdAt,
      String createdBy,
      String createdByName,
      String lastUpdatedBy,
      String lastUpdatedByName,
      int type,
      String surname,
      String farmerId,
      String employeeNum,
      String nrc,
      int dateOfBirth,
      String email,
      @PhoneNumberConverter() PhoneNumber phone});

  @override
  $PhoneNumberCopyWith<$Res> get phone;
}

/// @nodoc
class __$CustomerFirestoreDTOCopyWithImpl<$Res>
    extends _$CustomerFirestoreDTOCopyWithImpl<$Res>
    implements _$CustomerFirestoreDTOCopyWith<$Res> {
  __$CustomerFirestoreDTOCopyWithImpl(
      _CustomerFirestoreDTO _value, $Res Function(_CustomerFirestoreDTO) _then)
      : super(_value, (v) => _then(v as _CustomerFirestoreDTO));

  @override
  _CustomerFirestoreDTO get _value => super._value as _CustomerFirestoreDTO;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object availableTo = freezed,
    Object createdAt = freezed,
    Object createdBy = freezed,
    Object createdByName = freezed,
    Object lastUpdatedBy = freezed,
    Object lastUpdatedByName = freezed,
    Object type = freezed,
    Object surname = freezed,
    Object farmerId = freezed,
    Object employeeNum = freezed,
    Object nrc = freezed,
    Object dateOfBirth = freezed,
    Object email = freezed,
    Object phone = freezed,
  }) {
    return _then(_CustomerFirestoreDTO(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      availableTo: availableTo == freezed
          ? _value.availableTo
          : availableTo as Map<String, dynamic>,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as int,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
      createdByName: createdByName == freezed
          ? _value.createdByName
          : createdByName as String,
      lastUpdatedBy: lastUpdatedBy == freezed
          ? _value.lastUpdatedBy
          : lastUpdatedBy as String,
      lastUpdatedByName: lastUpdatedByName == freezed
          ? _value.lastUpdatedByName
          : lastUpdatedByName as String,
      type: type == freezed ? _value.type : type as int,
      surname: surname == freezed ? _value.surname : surname as String,
      farmerId: farmerId == freezed ? _value.farmerId : farmerId as String,
      employeeNum:
          employeeNum == freezed ? _value.employeeNum : employeeNum as String,
      nrc: nrc == freezed ? _value.nrc : nrc as String,
      dateOfBirth:
          dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth as int,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as PhoneNumber,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CustomerFirestoreDTO implements _CustomerFirestoreDTO {
  const _$_CustomerFirestoreDTO(
      {@required @JsonKey(ignore: true) this.id,
      @required this.name,
      @required @JsonKey(name: 'availableTo') this.availableTo,
      @required this.createdAt,
      @required this.createdBy,
      @required this.createdByName,
      @required this.lastUpdatedBy,
      @required this.lastUpdatedByName,
      @required this.type,
      this.surname,
      this.farmerId,
      this.employeeNum,
      this.nrc,
      this.dateOfBirth,
      this.email,
      @PhoneNumberConverter() this.phone})
      : assert(id != null),
        assert(name != null),
        assert(availableTo != null),
        assert(createdAt != null),
        assert(createdBy != null),
        assert(createdByName != null),
        assert(lastUpdatedBy != null),
        assert(lastUpdatedByName != null),
        assert(type != null);

  factory _$_CustomerFirestoreDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomerFirestoreDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'availableTo')
  final Map<String, dynamic> availableTo;
  @override
  final int createdAt;
  @override
  final String createdBy;
  @override
  final String createdByName;
  @override
  final String lastUpdatedBy;
  @override
  final String lastUpdatedByName;
  @override
  final int type;
  @override
  final String surname;
  @override
  final String farmerId;
  @override
  final String employeeNum;
  @override
  final String nrc;
  @override
  final int dateOfBirth;
  @override
  final String email;
  @override
  @PhoneNumberConverter()
  final PhoneNumber phone;

  @override
  String toString() {
    return 'CustomerFirestoreDTO(id: $id, name: $name, availableTo: $availableTo, createdAt: $createdAt, createdBy: $createdBy, createdByName: $createdByName, lastUpdatedBy: $lastUpdatedBy, lastUpdatedByName: $lastUpdatedByName, type: $type, surname: $surname, farmerId: $farmerId, employeeNum: $employeeNum, nrc: $nrc, dateOfBirth: $dateOfBirth, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomerFirestoreDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.availableTo, availableTo) ||
                const DeepCollectionEquality()
                    .equals(other.availableTo, availableTo)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdByName, createdByName) ||
                const DeepCollectionEquality()
                    .equals(other.createdByName, createdByName)) &&
            (identical(other.lastUpdatedBy, lastUpdatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdatedBy, lastUpdatedBy)) &&
            (identical(other.lastUpdatedByName, lastUpdatedByName) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdatedByName, lastUpdatedByName)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.farmerId, farmerId) ||
                const DeepCollectionEquality()
                    .equals(other.farmerId, farmerId)) &&
            (identical(other.employeeNum, employeeNum) ||
                const DeepCollectionEquality()
                    .equals(other.employeeNum, employeeNum)) &&
            (identical(other.nrc, nrc) ||
                const DeepCollectionEquality().equals(other.nrc, nrc)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(availableTo) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdByName) ^
      const DeepCollectionEquality().hash(lastUpdatedBy) ^
      const DeepCollectionEquality().hash(lastUpdatedByName) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(farmerId) ^
      const DeepCollectionEquality().hash(employeeNum) ^
      const DeepCollectionEquality().hash(nrc) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone);

  @override
  _$CustomerFirestoreDTOCopyWith<_CustomerFirestoreDTO> get copyWith =>
      __$CustomerFirestoreDTOCopyWithImpl<_CustomerFirestoreDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomerFirestoreDTOToJson(this);
  }
}

abstract class _CustomerFirestoreDTO implements CustomerFirestoreDTO {
  const factory _CustomerFirestoreDTO(
      {@required @JsonKey(ignore: true) String id,
      @required String name,
      @required @JsonKey(name: 'availableTo') Map<String, dynamic> availableTo,
      @required int createdAt,
      @required String createdBy,
      @required String createdByName,
      @required String lastUpdatedBy,
      @required String lastUpdatedByName,
      @required int type,
      String surname,
      String farmerId,
      String employeeNum,
      String nrc,
      int dateOfBirth,
      String email,
      @PhoneNumberConverter() PhoneNumber phone}) = _$_CustomerFirestoreDTO;

  factory _CustomerFirestoreDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerFirestoreDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'availableTo')
  Map<String, dynamic> get availableTo;
  @override
  int get createdAt;
  @override
  String get createdBy;
  @override
  String get createdByName;
  @override
  String get lastUpdatedBy;
  @override
  String get lastUpdatedByName;
  @override
  int get type;
  @override
  String get surname;
  @override
  String get farmerId;
  @override
  String get employeeNum;
  @override
  String get nrc;
  @override
  int get dateOfBirth;
  @override
  String get email;
  @override
  @PhoneNumberConverter()
  PhoneNumber get phone;
  @override
  _$CustomerFirestoreDTOCopyWith<_CustomerFirestoreDTO> get copyWith;
}
