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
      {@required String id,
      @required Team team,
      @required String name,
      @required String lastName,
      @required PhoneNumber phoneNumber,
      DateTime birthDate,
      ParticularId particularId}) {
    return Particular(
      id: id,
      team: team,
      name: name,
      lastName: lastName,
      phoneNumber: phoneNumber,
      birthDate: birthDate,
      particularId: particularId,
    );
  }

// ignore: unused_element
  Company company(
      {@required String id,
      @required String name,
      @required PhoneNumber phoneNumber,
      @required Team team}) {
    return Company(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      team: team,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Customer = _$CustomerTearOff();

/// @nodoc
mixin _$Customer {
  String get id;

  /// The team this customer belongs to
  Team get team;

  /// The name of the customer
  String get name;

  /// The phone number of the customer
  PhoneNumber get phoneNumber;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result particular(
            String id,
            Team team,
            String name,
            String lastName,
            PhoneNumber phoneNumber,
            DateTime birthDate,
            ParticularId particularId),
    @required
        Result company(
            String id, String name, PhoneNumber phoneNumber, Team team),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result particular(String id, Team team, String name, String lastName,
        PhoneNumber phoneNumber, DateTime birthDate, ParticularId particularId),
    Result company(String id, String name, PhoneNumber phoneNumber, Team team),
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
  $Res call({String id, Team team, String name, PhoneNumber phoneNumber});

  $TeamCopyWith<$Res> get team;
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
    Object team = freezed,
    Object name = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      team: team == freezed ? _value.team : team as Team,
      name: name == freezed ? _value.name : name as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
    ));
  }

  @override
  $TeamCopyWith<$Res> get team {
    if (_value.team == null) {
      return null;
    }
    return $TeamCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value));
    });
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
      {String id,
      Team team,
      String name,
      String lastName,
      PhoneNumber phoneNumber,
      DateTime birthDate,
      ParticularId particularId});

  @override
  $TeamCopyWith<$Res> get team;
  @override
  $PhoneNumberCopyWith<$Res> get phoneNumber;
  $ParticularIdCopyWith<$Res> get particularId;
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
    Object id = freezed,
    Object team = freezed,
    Object name = freezed,
    Object lastName = freezed,
    Object phoneNumber = freezed,
    Object birthDate = freezed,
    Object particularId = freezed,
  }) {
    return _then(Particular(
      id: id == freezed ? _value.id : id as String,
      team: team == freezed ? _value.team : team as Team,
      name: name == freezed ? _value.name : name as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      particularId: particularId == freezed
          ? _value.particularId
          : particularId as ParticularId,
    ));
  }

  @override
  $ParticularIdCopyWith<$Res> get particularId {
    if (_value.particularId == null) {
      return null;
    }
    return $ParticularIdCopyWith<$Res>(_value.particularId, (value) {
      return _then(_value.copyWith(particularId: value));
    });
  }
}

/// @nodoc
class _$Particular extends Particular {
  _$Particular(
      {@required this.id,
      @required this.team,
      @required this.name,
      @required this.lastName,
      @required this.phoneNumber,
      this.birthDate,
      this.particularId})
      : assert(id != null),
        assert(team != null),
        assert(name != null),
        assert(lastName != null),
        assert(phoneNumber != null),
        super._();

  @override
  final String id;
  @override

  /// The team this customer belongs to
  final Team team;
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
  final ParticularId particularId;

  @override
  String toString() {
    return 'Customer.particular(id: $id, team: $team, name: $name, lastName: $lastName, phoneNumber: $phoneNumber, birthDate: $birthDate, particularId: $particularId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Particular &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.team, team) ||
                const DeepCollectionEquality().equals(other.team, team)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(team) ^
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
        Result particular(
            String id,
            Team team,
            String name,
            String lastName,
            PhoneNumber phoneNumber,
            DateTime birthDate,
            ParticularId particularId),
    @required
        Result company(
            String id, String name, PhoneNumber phoneNumber, Team team),
  }) {
    assert(particular != null);
    assert(company != null);
    return particular(
        id, team, name, lastName, phoneNumber, birthDate, particularId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result particular(String id, Team team, String name, String lastName,
        PhoneNumber phoneNumber, DateTime birthDate, ParticularId particularId),
    Result company(String id, String name, PhoneNumber phoneNumber, Team team),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (particular != null) {
      return particular(
          id, team, name, lastName, phoneNumber, birthDate, particularId);
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

abstract class Particular extends Customer {
  Particular._() : super._();
  factory Particular(
      {@required String id,
      @required Team team,
      @required String name,
      @required String lastName,
      @required PhoneNumber phoneNumber,
      DateTime birthDate,
      ParticularId particularId}) = _$Particular;

  @override
  String get id;
  @override

  /// The team this customer belongs to
  Team get team;
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
  ParticularId get particularId;
  @override
  $ParticularCopyWith<Particular> get copyWith;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, PhoneNumber phoneNumber, Team team});

  @override
  $PhoneNumberCopyWith<$Res> get phoneNumber;
  @override
  $TeamCopyWith<$Res> get team;
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
    Object team = freezed,
  }) {
    return _then(Company(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      team: team == freezed ? _value.team : team as Team,
    ));
  }
}

/// @nodoc
class _$Company extends Company {
  _$Company(
      {@required this.id,
      @required this.name,
      @required this.phoneNumber,
      @required this.team})
      : assert(id != null),
        assert(name != null),
        assert(phoneNumber != null),
        assert(team != null),
        super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final PhoneNumber phoneNumber;
  @override
  final Team team;

  @override
  String toString() {
    return 'Customer.company(id: $id, name: $name, phoneNumber: $phoneNumber, team: $team)';
  }

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
            (identical(other.team, team) ||
                const DeepCollectionEquality().equals(other.team, team)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(team);

  @override
  $CompanyCopyWith<Company> get copyWith =>
      _$CompanyCopyWithImpl<Company>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result particular(
            String id,
            Team team,
            String name,
            String lastName,
            PhoneNumber phoneNumber,
            DateTime birthDate,
            ParticularId particularId),
    @required
        Result company(
            String id, String name, PhoneNumber phoneNumber, Team team),
  }) {
    assert(particular != null);
    assert(company != null);
    return company(id, name, phoneNumber, team);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result particular(String id, Team team, String name, String lastName,
        PhoneNumber phoneNumber, DateTime birthDate, ParticularId particularId),
    Result company(String id, String name, PhoneNumber phoneNumber, Team team),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (company != null) {
      return company(id, name, phoneNumber, team);
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

abstract class Company extends Customer {
  Company._() : super._();
  factory Company(
      {@required String id,
      @required String name,
      @required PhoneNumber phoneNumber,
      @required Team team}) = _$Company;

  @override
  String get id;
  @override
  String get name;
  @override
  PhoneNumber get phoneNumber;
  @override
  Team get team;
  @override
  $CompanyCopyWith<Company> get copyWith;
}
