// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'particular_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ParticularIdTearOff {
  const _$ParticularIdTearOff();

// ignore: unused_element
  _ParticularId call(
      {@required String key, @required String value, String label}) {
    return _ParticularId(
      key: key,
      value: value,
      label: label,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ParticularId = _$ParticularIdTearOff();

/// @nodoc
mixin _$ParticularId {
  String get key;
  String get value;
  String get label;

  $ParticularIdCopyWith<ParticularId> get copyWith;
}

/// @nodoc
abstract class $ParticularIdCopyWith<$Res> {
  factory $ParticularIdCopyWith(
          ParticularId value, $Res Function(ParticularId) then) =
      _$ParticularIdCopyWithImpl<$Res>;
  $Res call({String key, String value, String label});
}

/// @nodoc
class _$ParticularIdCopyWithImpl<$Res> implements $ParticularIdCopyWith<$Res> {
  _$ParticularIdCopyWithImpl(this._value, this._then);

  final ParticularId _value;
  // ignore: unused_field
  final $Res Function(ParticularId) _then;

  @override
  $Res call({
    Object key = freezed,
    Object value = freezed,
    Object label = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed ? _value.key : key as String,
      value: value == freezed ? _value.value : value as String,
      label: label == freezed ? _value.label : label as String,
    ));
  }
}

/// @nodoc
abstract class _$ParticularIdCopyWith<$Res>
    implements $ParticularIdCopyWith<$Res> {
  factory _$ParticularIdCopyWith(
          _ParticularId value, $Res Function(_ParticularId) then) =
      __$ParticularIdCopyWithImpl<$Res>;
  @override
  $Res call({String key, String value, String label});
}

/// @nodoc
class __$ParticularIdCopyWithImpl<$Res> extends _$ParticularIdCopyWithImpl<$Res>
    implements _$ParticularIdCopyWith<$Res> {
  __$ParticularIdCopyWithImpl(
      _ParticularId _value, $Res Function(_ParticularId) _then)
      : super(_value, (v) => _then(v as _ParticularId));

  @override
  _ParticularId get _value => super._value as _ParticularId;

  @override
  $Res call({
    Object key = freezed,
    Object value = freezed,
    Object label = freezed,
  }) {
    return _then(_ParticularId(
      key: key == freezed ? _value.key : key as String,
      value: value == freezed ? _value.value : value as String,
      label: label == freezed ? _value.label : label as String,
    ));
  }
}

/// @nodoc
class _$_ParticularId implements _ParticularId {
  const _$_ParticularId({@required this.key, @required this.value, this.label})
      : assert(key != null),
        assert(value != null);

  @override
  final String key;
  @override
  final String value;
  @override
  final String label;

  @override
  String toString() {
    return 'ParticularId(key: $key, value: $value, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ParticularId &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(label);

  @override
  _$ParticularIdCopyWith<_ParticularId> get copyWith =>
      __$ParticularIdCopyWithImpl<_ParticularId>(this, _$identity);
}

abstract class _ParticularId implements ParticularId {
  const factory _ParticularId(
      {@required String key,
      @required String value,
      String label}) = _$_ParticularId;

  @override
  String get key;
  @override
  String get value;
  @override
  String get label;
  @override
  _$ParticularIdCopyWith<_ParticularId> get copyWith;
}
