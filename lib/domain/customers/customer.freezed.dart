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
  Person person(
      {String id,
      @required String name,
      @required String surname,
      PhoneNumber phoneNumber,
      int updatedAt,
      DateTime birthDate,
      String email,
      PersonalId personalId}) {
    return Person(
      id: id,
      name: name,
      surname: surname,
      phoneNumber: phoneNumber,
      updatedAt: updatedAt,
      birthDate: birthDate,
      email: email,
      personalId: personalId,
    );
  }

// ignore: unused_element
  Company company(
      {String id,
      @required String name,
      PhoneNumber phoneNumber,
      int updatedAt}) {
    return Company(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Customer = _$CustomerTearOff();

/// @nodoc
mixin _$Customer {
  /// The unique identifier for the entity (mainly used for databases)
  String get id;

  /// The name of the customer
  String get name;

  /// The phone number of the customer
  PhoneNumber get phoneNumber;

  /// Timestamp that represents the last time this entity was updated
  int get updatedAt;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult person(
            String id,
            String name,
            String surname,
            PhoneNumber phoneNumber,
            int updatedAt,
            DateTime birthDate,
            String email,
            PersonalId personalId),
    @required
        TResult company(
            String id, String name, PhoneNumber phoneNumber, int updatedAt),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult person(
        String id,
        String name,
        String surname,
        PhoneNumber phoneNumber,
        int updatedAt,
        DateTime birthDate,
        String email,
        PersonalId personalId),
    TResult company(
        String id, String name, PhoneNumber phoneNumber, int updatedAt),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult person(Person value),
    @required TResult company(Company value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult person(Person value),
    TResult company(Company value),
    @required TResult orElse(),
  });

  $CustomerCopyWith<Customer> get copyWith;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res>;
  $Res call({String id, String name, PhoneNumber phoneNumber, int updatedAt});

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
    Object id = freezed,
    Object name = freezed,
    Object phoneNumber = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as int,
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
abstract class $PersonCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String surname,
      PhoneNumber phoneNumber,
      int updatedAt,
      DateTime birthDate,
      String email,
      PersonalId personalId});

  @override
  $PhoneNumberCopyWith<$Res> get phoneNumber;
  $PersonalIdCopyWith<$Res> get personalId;
}

/// @nodoc
class _$PersonCopyWithImpl<$Res> extends _$CustomerCopyWithImpl<$Res>
    implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(Person _value, $Res Function(Person) _then)
      : super(_value, (v) => _then(v as Person));

  @override
  Person get _value => super._value as Person;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object surname = freezed,
    Object phoneNumber = freezed,
    Object updatedAt = freezed,
    Object birthDate = freezed,
    Object email = freezed,
    Object personalId = freezed,
  }) {
    return _then(Person(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      surname: surname == freezed ? _value.surname : surname as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as int,
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      email: email == freezed ? _value.email : email as String,
      personalId:
          personalId == freezed ? _value.personalId : personalId as PersonalId,
    ));
  }

  @override
  $PersonalIdCopyWith<$Res> get personalId {
    if (_value.personalId == null) {
      return null;
    }
    return $PersonalIdCopyWith<$Res>(_value.personalId, (value) {
      return _then(_value.copyWith(personalId: value));
    });
  }
}

/// @nodoc
class _$Person extends Person {
  _$Person(
      {this.id,
      @required this.name,
      @required this.surname,
      this.phoneNumber,
      this.updatedAt,
      this.birthDate,
      this.email,
      this.personalId})
      : assert(name != null),
        assert(surname != null),
        super._();

  @override

  /// The unique identifier for the entity (mainly used for databases)
  final String id;
  @override

  /// The name of the customer
  final String name;
  @override

  /// The last name of the customer (also called surname)
  final String surname;
  @override

  /// The phone number of the customer
  final PhoneNumber phoneNumber;
  @override

  /// Timestamp that represents the last time this entity was updated
  final int updatedAt;
  @override

  /// The birth date of the persona
  final DateTime birthDate;
  @override

  /// The contact email of the person
  final String email;
  @override

  /// An unique identifier of the person. Commonly: DNI, NRC, NIF, etc.
  final PersonalId personalId;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Person &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.personalId, personalId) ||
                const DeepCollectionEquality()
                    .equals(other.personalId, personalId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(personalId);

  @override
  $PersonCopyWith<Person> get copyWith =>
      _$PersonCopyWithImpl<Person>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult person(
            String id,
            String name,
            String surname,
            PhoneNumber phoneNumber,
            int updatedAt,
            DateTime birthDate,
            String email,
            PersonalId personalId),
    @required
        TResult company(
            String id, String name, PhoneNumber phoneNumber, int updatedAt),
  }) {
    assert(person != null);
    assert(company != null);
    return person(id, name, surname, phoneNumber, updatedAt, birthDate, email,
        personalId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult person(
        String id,
        String name,
        String surname,
        PhoneNumber phoneNumber,
        int updatedAt,
        DateTime birthDate,
        String email,
        PersonalId personalId),
    TResult company(
        String id, String name, PhoneNumber phoneNumber, int updatedAt),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (person != null) {
      return person(id, name, surname, phoneNumber, updatedAt, birthDate, email,
          personalId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult person(Person value),
    @required TResult company(Company value),
  }) {
    assert(person != null);
    assert(company != null);
    return person(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult person(Person value),
    TResult company(Company value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (person != null) {
      return person(this);
    }
    return orElse();
  }
}

abstract class Person extends Customer {
  Person._() : super._();
  factory Person(
      {String id,
      @required String name,
      @required String surname,
      PhoneNumber phoneNumber,
      int updatedAt,
      DateTime birthDate,
      String email,
      PersonalId personalId}) = _$Person;

  @override

  /// The unique identifier for the entity (mainly used for databases)
  String get id;
  @override

  /// The name of the customer
  String get name;

  /// The last name of the customer (also called surname)
  String get surname;
  @override

  /// The phone number of the customer
  PhoneNumber get phoneNumber;
  @override

  /// Timestamp that represents the last time this entity was updated
  int get updatedAt;

  /// The birth date of the persona
  DateTime get birthDate;

  /// The contact email of the person
  String get email;

  /// An unique identifier of the person. Commonly: DNI, NRC, NIF, etc.
  PersonalId get personalId;
  @override
  $PersonCopyWith<Person> get copyWith;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, PhoneNumber phoneNumber, int updatedAt});

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
    Object id = freezed,
    Object name = freezed,
    Object phoneNumber = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(Company(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as int,
    ));
  }
}

/// @nodoc
class _$Company extends Company {
  _$Company({this.id, @required this.name, this.phoneNumber, this.updatedAt})
      : assert(name != null),
        super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final PhoneNumber phoneNumber;
  @override
  final int updatedAt;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Company &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(updatedAt);

  @override
  $CompanyCopyWith<Company> get copyWith =>
      _$CompanyCopyWithImpl<Company>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult person(
            String id,
            String name,
            String surname,
            PhoneNumber phoneNumber,
            int updatedAt,
            DateTime birthDate,
            String email,
            PersonalId personalId),
    @required
        TResult company(
            String id, String name, PhoneNumber phoneNumber, int updatedAt),
  }) {
    assert(person != null);
    assert(company != null);
    return company(id, name, phoneNumber, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult person(
        String id,
        String name,
        String surname,
        PhoneNumber phoneNumber,
        int updatedAt,
        DateTime birthDate,
        String email,
        PersonalId personalId),
    TResult company(
        String id, String name, PhoneNumber phoneNumber, int updatedAt),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (company != null) {
      return company(id, name, phoneNumber, updatedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult person(Person value),
    @required TResult company(Company value),
  }) {
    assert(person != null);
    assert(company != null);
    return company(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult person(Person value),
    TResult company(Company value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (company != null) {
      return company(this);
    }
    return orElse();
  }
}

abstract class Company extends Customer {
  Company._() : super._();
  factory Company(
      {String id,
      @required String name,
      PhoneNumber phoneNumber,
      int updatedAt}) = _$Company;

  @override
  String get id;
  @override
  String get name;
  @override
  PhoneNumber get phoneNumber;
  @override
  int get updatedAt;
  @override
  $CompanyCopyWith<Company> get copyWith;
}
