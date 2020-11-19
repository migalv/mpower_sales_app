// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CustomerTearOff {
  const _$CustomerTearOff();

// ignore: unused_element
  Particular particular(
      {@required UniqueId uid,
      String name,
      String lastName,
      PhoneNumber phoneNumber,
      DateTime birthDate,
      String particularId}) {
    return Particular(
      uid: uid,
      name: name,
      lastName: lastName,
      phoneNumber: phoneNumber,
      birthDate: birthDate,
      particularId: particularId,
    );
  }

// ignore: unused_element
  Company company(
      {@required UniqueId uid,
      @required String name,
      @required PhoneNumber phoneNumber,
      @required String companyUid}) {
    return Company(
      uid: uid,
      name: name,
      phoneNumber: phoneNumber,
      companyUid: companyUid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Customer = _$CustomerTearOff();

/// @nodoc
mixin _$Customer {
  UniqueId get uid;

  /// The name of the customer
  String get name;

  /// The phone number of the customer
  PhoneNumber get phoneNumber;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result particular(UniqueId uid, String name, String lastName,
            PhoneNumber phoneNumber, DateTime birthDate, String particularId),
    @required
        Result company(UniqueId uid, String name, PhoneNumber phoneNumber,
            String companyUid),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result particular(UniqueId uid, String name, String lastName,
        PhoneNumber phoneNumber, DateTime birthDate, String particularId),
    Result company(
        UniqueId uid, String name, PhoneNumber phoneNumber, String companyUid),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result particular(Particular value),
    @required Result company(Company value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result particular(Particular value),
    Result company(Company value),
    @required Result orElse(),
  });

  $CustomerCopyWith<Customer> get copyWith;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res>;
  $Res call({UniqueId uid, String name, PhoneNumber phoneNumber});

  $PhoneNumberCopyWith<$Res> get phoneNumber;
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res> implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  final Customer _value;
  // ignore: unused_field
  final $Res Function(Customer) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object name = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      name: name == freezed ? _value.name : name as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
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
abstract class $ParticularCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory $ParticularCopyWith(
          Particular value, $Res Function(Particular) then) =
      _$ParticularCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId uid,
      String name,
      String lastName,
      PhoneNumber phoneNumber,
      DateTime birthDate,
      String particularId});

  @override
  $PhoneNumberCopyWith<$Res> get phoneNumber;
}

/// @nodoc
class _$ParticularCopyWithImpl<$Res> extends _$CustomerCopyWithImpl<$Res>
    implements $ParticularCopyWith<$Res> {
  _$ParticularCopyWithImpl(Particular _value, $Res Function(Particular) _then)
      : super(_value, (v) => _then(v as Particular));

  @override
  Particular get _value => super._value as Particular;

  @override
  $Res call({
    Object uid = freezed,
    Object name = freezed,
    Object lastName = freezed,
    Object phoneNumber = freezed,
    Object birthDate = freezed,
    Object particularId = freezed,
  }) {
    return _then(Particular(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      name: name == freezed ? _value.name : name as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      particularId: particularId == freezed
          ? _value.particularId
          : particularId as String,
    ));
  }
}

/// @nodoc
class _$Particular implements Particular {
  _$Particular(
      {@required this.uid,
      this.name,
      this.lastName,
      this.phoneNumber,
      this.birthDate,
      this.particularId})
      : assert(uid != null);

  @override
  final UniqueId uid;
  @override

  /// The name of the customer
  final String name;
  @override

  /// The last name of the customer
  final String lastName;
  @override

  /// The phone number of the customer
  final PhoneNumber phoneNumber;
  @override

  /// The birth date of the persona
  final DateTime birthDate;
  @override

  /// An unique identifier of the persona. Commonly: DNI, NRC, NIF, etc.
  final String particularId;

  @override
  String toString() {
    return 'Customer.particular(uid: $uid, name: $name, lastName: $lastName, phoneNumber: $phoneNumber, birthDate: $birthDate, particularId: $particularId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Particular &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.particularId, particularId) ||
                const DeepCollectionEquality()
                    .equals(other.particularId, particularId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(particularId);

  @override
  $ParticularCopyWith<Particular> get copyWith =>
      _$ParticularCopyWithImpl<Particular>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result particular(UniqueId uid, String name, String lastName,
            PhoneNumber phoneNumber, DateTime birthDate, String particularId),
    @required
        Result company(UniqueId uid, String name, PhoneNumber phoneNumber,
            String companyUid),
  }) {
    assert(particular != null);
    assert(company != null);
    return particular(
        uid, name, lastName, phoneNumber, birthDate, particularId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result particular(UniqueId uid, String name, String lastName,
        PhoneNumber phoneNumber, DateTime birthDate, String particularId),
    Result company(
        UniqueId uid, String name, PhoneNumber phoneNumber, String companyUid),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (particular != null) {
      return particular(
          uid, name, lastName, phoneNumber, birthDate, particularId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result particular(Particular value),
    @required Result company(Company value),
  }) {
    assert(particular != null);
    assert(company != null);
    return particular(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result particular(Particular value),
    Result company(Company value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (particular != null) {
      return particular(this);
    }
    return orElse();
  }
}

abstract class Particular implements Customer {
  factory Particular(
      {@required UniqueId uid,
      String name,
      String lastName,
      PhoneNumber phoneNumber,
      DateTime birthDate,
      String particularId}) = _$Particular;

  @override
  UniqueId get uid;
  @override

  /// The name of the customer
  String get name;

  /// The last name of the customer
  String get lastName;
  @override

  /// The phone number of the customer
  PhoneNumber get phoneNumber;

  /// The birth date of the persona
  DateTime get birthDate;

  /// An unique identifier of the persona. Commonly: DNI, NRC, NIF, etc.
  String get particularId;
  @override
  $ParticularCopyWith<Particular> get copyWith;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId uid, String name, PhoneNumber phoneNumber, String companyUid});

  @override
  $PhoneNumberCopyWith<$Res> get phoneNumber;
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res> extends _$CustomerCopyWithImpl<$Res>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(Company _value, $Res Function(Company) _then)
      : super(_value, (v) => _then(v as Company));

  @override
  Company get _value => super._value as Company;

  @override
  $Res call({
    Object uid = freezed,
    Object name = freezed,
    Object phoneNumber = freezed,
    Object companyUid = freezed,
  }) {
    return _then(Company(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      name: name == freezed ? _value.name : name as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      companyUid:
          companyUid == freezed ? _value.companyUid : companyUid as String,
    ));
  }
}

/// @nodoc
class _$Company implements Company {
  _$Company(
      {@required this.uid,
      @required this.name,
      @required this.phoneNumber,
      @required this.companyUid})
      : assert(uid != null),
        assert(name != null),
        assert(phoneNumber != null),
        assert(companyUid != null);

  @override
  final UniqueId uid;
  @override
  final String name;
  @override
  final PhoneNumber phoneNumber;
  @override

  /// An unique identifier for the company.
  final String companyUid;

  @override
  String toString() {
    return 'Customer.company(uid: $uid, name: $name, phoneNumber: $phoneNumber, companyUid: $companyUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Company &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.companyUid, companyUid) ||
                const DeepCollectionEquality()
                    .equals(other.companyUid, companyUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(companyUid);

  @override
  $CompanyCopyWith<Company> get copyWith =>
      _$CompanyCopyWithImpl<Company>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result particular(UniqueId uid, String name, String lastName,
            PhoneNumber phoneNumber, DateTime birthDate, String particularId),
    @required
        Result company(UniqueId uid, String name, PhoneNumber phoneNumber,
            String companyUid),
  }) {
    assert(particular != null);
    assert(company != null);
    return company(uid, name, phoneNumber, companyUid);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result particular(UniqueId uid, String name, String lastName,
        PhoneNumber phoneNumber, DateTime birthDate, String particularId),
    Result company(
        UniqueId uid, String name, PhoneNumber phoneNumber, String companyUid),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (company != null) {
      return company(uid, name, phoneNumber, companyUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result particular(Particular value),
    @required Result company(Company value),
  }) {
    assert(particular != null);
    assert(company != null);
    return company(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result particular(Particular value),
    Result company(Company value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (company != null) {
      return company(this);
    }
    return orElse();
  }
}

abstract class Company implements Customer {
  factory Company(
      {@required UniqueId uid,
      @required String name,
      @required PhoneNumber phoneNumber,
      @required String companyUid}) = _$Company;

  @override
  UniqueId get uid;
  @override
  String get name;
  @override
  PhoneNumber get phoneNumber;

  /// An unique identifier for the company.
  String get companyUid;
  @override
  $CompanyCopyWith<Company> get copyWith;
}
