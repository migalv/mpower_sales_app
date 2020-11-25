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
  _PersonalId call({@required String key, @required String value}) {
    return _PersonalId(
      key: key,
      value: value,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PersonalId = _$PersonalIdTearOff();

/// @nodoc
mixin _$PersonalId {
  /// The key used in the data base
  String get key;

  /// The actual personal identifier
  String get value;

  $PersonalIdCopyWith<PersonalId> get copyWith;
}

/// @nodoc
abstract class $PersonalIdCopyWith<$Res> {
  factory $PersonalIdCopyWith(
          PersonalId value, $Res Function(PersonalId) then) =
      _$PersonalIdCopyWithImpl<$Res>;
  $Res call({String key, String value});
}

/// @nodoc
class _$PersonalIdCopyWithImpl<$Res> implements $PersonalIdCopyWith<$Res> {
  _$PersonalIdCopyWithImpl(this._value, this._then);

  final PersonalId _value;
  // ignore: unused_field
  final $Res Function(PersonalId) _then;

  @override
  $Res call({
    Object key = freezed,
    Object value = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed ? _value.key : key as String,
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
abstract class _$PersonalIdCopyWith<$Res> implements $PersonalIdCopyWith<$Res> {
  factory _$PersonalIdCopyWith(
          _PersonalId value, $Res Function(_PersonalId) then) =
      __$PersonalIdCopyWithImpl<$Res>;
  @override
  $Res call({String key, String value});
}

/// @nodoc
class __$PersonalIdCopyWithImpl<$Res> extends _$PersonalIdCopyWithImpl<$Res>
    implements _$PersonalIdCopyWith<$Res> {
  __$PersonalIdCopyWithImpl(
      _PersonalId _value, $Res Function(_PersonalId) _then)
      : super(_value, (v) => _then(v as _PersonalId));

  @override
  _PersonalId get _value => super._value as _PersonalId;

  @override
  $Res call({
    Object key = freezed,
    Object value = freezed,
  }) {
    return _then(_PersonalId(
      key: key == freezed ? _value.key : key as String,
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$_PersonalId implements _PersonalId {
  const _$_PersonalId({@required this.key, @required this.value})
      : assert(key != null),
        assert(value != null);

  @override

  /// The key used in the data base
  final String key;
  @override

  /// The actual personal identifier
  final String value;

  @override
  String toString() {
    return 'PersonalId(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonalId &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(value);

  @override
  _$PersonalIdCopyWith<_PersonalId> get copyWith =>
      __$PersonalIdCopyWithImpl<_PersonalId>(this, _$identity);
}

abstract class _PersonalId implements PersonalId {
  const factory _PersonalId({@required String key, @required String value}) =
      _$_PersonalId;

  @override

  /// The key used in the data base
  String get key;
  @override

  /// The actual personal identifier
  String get value;
  @override
  _$PersonalIdCopyWith<_PersonalId> get copyWith;
}
