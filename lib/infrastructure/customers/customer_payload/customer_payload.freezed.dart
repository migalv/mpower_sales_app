// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'customer_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CustomerPayload _$CustomerPayloadFromJson(Map<String, dynamic> json) {
  return _CustomerPayload.fromJson(json);
}

/// @nodoc
class _$CustomerPayloadTearOff {
  const _$CustomerPayloadTearOff();

// ignore: unused_element
  _CustomerPayload call(
      {@required String name,
      @required String teamId,
      @required String teamName,
      @required CustomerType type,
      String surname,
      Map<String, dynamic> extraData}) {
    return _CustomerPayload(
      name: name,
      teamId: teamId,
      teamName: teamName,
      type: type,
      surname: surname,
      extraData: extraData,
    );
  }

// ignore: unused_element
  CustomerPayload fromJson(Map<String, Object> json) {
    return CustomerPayload.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CustomerPayload = _$CustomerPayloadTearOff();

/// @nodoc
mixin _$CustomerPayload {
  String get name;
  String get teamId;
  String get teamName;
  CustomerType get type;
  String get surname;
  Map<String, dynamic> get extraData;

  Map<String, dynamic> toJson();
  $CustomerPayloadCopyWith<CustomerPayload> get copyWith;
}

/// @nodoc
abstract class $CustomerPayloadCopyWith<$Res> {
  factory $CustomerPayloadCopyWith(
          CustomerPayload value, $Res Function(CustomerPayload) then) =
      _$CustomerPayloadCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String teamId,
      String teamName,
      CustomerType type,
      String surname,
      Map<String, dynamic> extraData});
}

/// @nodoc
class _$CustomerPayloadCopyWithImpl<$Res>
    implements $CustomerPayloadCopyWith<$Res> {
  _$CustomerPayloadCopyWithImpl(this._value, this._then);

  final CustomerPayload _value;
  // ignore: unused_field
  final $Res Function(CustomerPayload) _then;

  @override
  $Res call({
    Object name = freezed,
    Object teamId = freezed,
    Object teamName = freezed,
    Object type = freezed,
    Object surname = freezed,
    Object extraData = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      teamId: teamId == freezed ? _value.teamId : teamId as String,
      teamName: teamName == freezed ? _value.teamName : teamName as String,
      type: type == freezed ? _value.type : type as CustomerType,
      surname: surname == freezed ? _value.surname : surname as String,
      extraData: extraData == freezed
          ? _value.extraData
          : extraData as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$CustomerPayloadCopyWith<$Res>
    implements $CustomerPayloadCopyWith<$Res> {
  factory _$CustomerPayloadCopyWith(
          _CustomerPayload value, $Res Function(_CustomerPayload) then) =
      __$CustomerPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String teamId,
      String teamName,
      CustomerType type,
      String surname,
      Map<String, dynamic> extraData});
}

/// @nodoc
class __$CustomerPayloadCopyWithImpl<$Res>
    extends _$CustomerPayloadCopyWithImpl<$Res>
    implements _$CustomerPayloadCopyWith<$Res> {
  __$CustomerPayloadCopyWithImpl(
      _CustomerPayload _value, $Res Function(_CustomerPayload) _then)
      : super(_value, (v) => _then(v as _CustomerPayload));

  @override
  _CustomerPayload get _value => super._value as _CustomerPayload;

  @override
  $Res call({
    Object name = freezed,
    Object teamId = freezed,
    Object teamName = freezed,
    Object type = freezed,
    Object surname = freezed,
    Object extraData = freezed,
  }) {
    return _then(_CustomerPayload(
      name: name == freezed ? _value.name : name as String,
      teamId: teamId == freezed ? _value.teamId : teamId as String,
      teamName: teamName == freezed ? _value.teamName : teamName as String,
      type: type == freezed ? _value.type : type as CustomerType,
      surname: surname == freezed ? _value.surname : surname as String,
      extraData: extraData == freezed
          ? _value.extraData
          : extraData as Map<String, dynamic>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CustomerPayload implements _CustomerPayload {
  const _$_CustomerPayload(
      {@required this.name,
      @required this.teamId,
      @required this.teamName,
      @required this.type,
      this.surname,
      this.extraData})
      : assert(name != null),
        assert(teamId != null),
        assert(teamName != null),
        assert(type != null);

  factory _$_CustomerPayload.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomerPayloadFromJson(json);

  @override
  final String name;
  @override
  final String teamId;
  @override
  final String teamName;
  @override
  final CustomerType type;
  @override
  final String surname;
  @override
  final Map<String, dynamic> extraData;

  @override
  String toString() {
    return 'CustomerPayload(name: $name, teamId: $teamId, teamName: $teamName, type: $type, surname: $surname, extraData: $extraData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomerPayload &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.teamId, teamId) ||
                const DeepCollectionEquality().equals(other.teamId, teamId)) &&
            (identical(other.teamName, teamName) ||
                const DeepCollectionEquality()
                    .equals(other.teamName, teamName)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.extraData, extraData) ||
                const DeepCollectionEquality()
                    .equals(other.extraData, extraData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(teamId) ^
      const DeepCollectionEquality().hash(teamName) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(extraData);

  @override
  _$CustomerPayloadCopyWith<_CustomerPayload> get copyWith =>
      __$CustomerPayloadCopyWithImpl<_CustomerPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomerPayloadToJson(this);
  }
}

abstract class _CustomerPayload implements CustomerPayload {
  const factory _CustomerPayload(
      {@required String name,
      @required String teamId,
      @required String teamName,
      @required CustomerType type,
      String surname,
      Map<String, dynamic> extraData}) = _$_CustomerPayload;

  factory _CustomerPayload.fromJson(Map<String, dynamic> json) =
      _$_CustomerPayload.fromJson;

  @override
  String get name;
  @override
  String get teamId;
  @override
  String get teamName;
  @override
  CustomerType get type;
  @override
  String get surname;
  @override
  Map<String, dynamic> get extraData;
  @override
  _$CustomerPayloadCopyWith<_CustomerPayload> get copyWith;
}
