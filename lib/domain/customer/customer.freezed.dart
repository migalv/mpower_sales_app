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
      @required String name,
      @required String lastName,
      @required PhoneNumber phoneNumber,
      @required DateTime birthDate}) {
    return Particular(
      uid: uid,
      name: name,
      lastName: lastName,
      phoneNumber: phoneNumber,
      birthDate: birthDate,
    );
  }

// ignore: unused_element
  Company company(
      {@required UniqueId uid,
      @required String name,
      @required PhoneNumber phoneNumber}) {
    return Company(
      uid: uid,
      name: name,
      phoneNumber: phoneNumber,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Customer = _$CustomerTearOff();

/// @nodoc
mixin _$Customer {
  UniqueId get uid;
  String get name;
  PhoneNumber get phoneNumber;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result particular(UniqueId uid, String name, String lastName,
            PhoneNumber phoneNumber, DateTime birthDate),
    @required
        Result company(UniqueId uid, String name, PhoneNumber phoneNumber),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result particular(UniqueId uid, String name, String lastName,
        PhoneNumber phoneNumber, DateTime birthDate),
    Result company(UniqueId uid, String name, PhoneNumber phoneNumber),
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
      DateTime birthDate});

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
    ));
  }
}

@Implements(IParticular)

/// @nodoc
class _$Particular extends Particular {
  _$Particular(
      {@required this.uid,
      @required this.name,
      @required this.lastName,
      @required this.phoneNumber,
      @required this.birthDate})
      : assert(uid != null),
        assert(name != null),
        assert(lastName != null),
        assert(phoneNumber != null),
        assert(birthDate != null),
        super._();

  @override
  final UniqueId uid;
  @override
  final String name;
  @override
  final String lastName;
  @override
  final PhoneNumber phoneNumber;
  @override
  final DateTime birthDate;

  @override
  String toString() {
    return 'Customer.particular(uid: $uid, name: $name, lastName: $lastName, phoneNumber: $phoneNumber, birthDate: $birthDate)';
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
                    .equals(other.birthDate, birthDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(birthDate);

  @override
  $ParticularCopyWith<Particular> get copyWith =>
      _$ParticularCopyWithImpl<Particular>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result particular(UniqueId uid, String name, String lastName,
            PhoneNumber phoneNumber, DateTime birthDate),
    @required
        Result company(UniqueId uid, String name, PhoneNumber phoneNumber),
  }) {
    assert(particular != null);
    assert(company != null);
    return particular(uid, name, lastName, phoneNumber, birthDate);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result particular(UniqueId uid, String name, String lastName,
        PhoneNumber phoneNumber, DateTime birthDate),
    Result company(UniqueId uid, String name, PhoneNumber phoneNumber),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (particular != null) {
      return particular(uid, name, lastName, phoneNumber, birthDate);
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

abstract class Particular extends Customer implements IParticular {
  Particular._() : super._();
  factory Particular(
      {@required UniqueId uid,
      @required String name,
      @required String lastName,
      @required PhoneNumber phoneNumber,
      @required DateTime birthDate}) = _$Particular;

  @override
  UniqueId get uid;
  @override
  String get name;
  String get lastName;
  @override
  PhoneNumber get phoneNumber;
  DateTime get birthDate;
  @override
  $ParticularCopyWith<Particular> get copyWith;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId uid, String name, PhoneNumber phoneNumber});

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
  }) {
    return _then(Company(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      name: name == freezed ? _value.name : name as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
    ));
  }
}

@Implements(ICompany)

/// @nodoc
class _$Company extends Company {
  _$Company(
      {@required this.uid, @required this.name, @required this.phoneNumber})
      : assert(uid != null),
        assert(name != null),
        assert(phoneNumber != null),
        super._();

  @override
  final UniqueId uid;
  @override
  final String name;
  @override
  final PhoneNumber phoneNumber;

  @override
  String toString() {
    return 'Customer.company(uid: $uid, name: $name, phoneNumber: $phoneNumber)';
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
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber);

  @override
  $CompanyCopyWith<Company> get copyWith =>
      _$CompanyCopyWithImpl<Company>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result particular(UniqueId uid, String name, String lastName,
            PhoneNumber phoneNumber, DateTime birthDate),
    @required
        Result company(UniqueId uid, String name, PhoneNumber phoneNumber),
  }) {
    assert(particular != null);
    assert(company != null);
    return company(uid, name, phoneNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result particular(UniqueId uid, String name, String lastName,
        PhoneNumber phoneNumber, DateTime birthDate),
    Result company(UniqueId uid, String name, PhoneNumber phoneNumber),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (company != null) {
      return company(uid, name, phoneNumber);
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

abstract class Company extends Customer implements ICompany {
  Company._() : super._();
  factory Company(
      {@required UniqueId uid,
      @required String name,
      @required PhoneNumber phoneNumber}) = _$Company;

  @override
  UniqueId get uid;
  @override
  String get name;
  @override
  PhoneNumber get phoneNumber;
  @override
  $CompanyCopyWith<Company> get copyWith;
}
