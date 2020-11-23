// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'phone_number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PhoneNumberTearOff {
  const _$PhoneNumberTearOff();

// ignore: unused_element
  _PhoneNumber call({@required String code, @required String number}) {
    return _PhoneNumber(
      code: code,
      number: number,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PhoneNumber = _$PhoneNumberTearOff();

/// @nodoc
mixin _$PhoneNumber {
  /// Country code
  String get code;

  /// Phone number
  String get number;

  $PhoneNumberCopyWith<PhoneNumber> get copyWith;
}

/// @nodoc
abstract class $PhoneNumberCopyWith<$Res> {
  factory $PhoneNumberCopyWith(
          PhoneNumber value, $Res Function(PhoneNumber) then) =
      _$PhoneNumberCopyWithImpl<$Res>;
  $Res call({String code, String number});
}

/// @nodoc
class _$PhoneNumberCopyWithImpl<$Res> implements $PhoneNumberCopyWith<$Res> {
  _$PhoneNumberCopyWithImpl(this._value, this._then);

  final PhoneNumber _value;
  // ignore: unused_field
  final $Res Function(PhoneNumber) _then;

  @override
  $Res call({
    Object code = freezed,
    Object number = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as String,
      number: number == freezed ? _value.number : number as String,
    ));
  }
}

/// @nodoc
abstract class _$PhoneNumberCopyWith<$Res>
    implements $PhoneNumberCopyWith<$Res> {
  factory _$PhoneNumberCopyWith(
          _PhoneNumber value, $Res Function(_PhoneNumber) then) =
      __$PhoneNumberCopyWithImpl<$Res>;
  @override
  $Res call({String code, String number});
}

/// @nodoc
class __$PhoneNumberCopyWithImpl<$Res> extends _$PhoneNumberCopyWithImpl<$Res>
    implements _$PhoneNumberCopyWith<$Res> {
  __$PhoneNumberCopyWithImpl(
      _PhoneNumber _value, $Res Function(_PhoneNumber) _then)
      : super(_value, (v) => _then(v as _PhoneNumber));

  @override
  _PhoneNumber get _value => super._value as _PhoneNumber;

  @override
  $Res call({
    Object code = freezed,
    Object number = freezed,
  }) {
    return _then(_PhoneNumber(
      code: code == freezed ? _value.code : code as String,
      number: number == freezed ? _value.number : number as String,
    ));
  }
}

/// @nodoc
class _$_PhoneNumber implements _PhoneNumber {
  const _$_PhoneNumber({@required this.code, @required this.number})
      : assert(code != null),
        assert(number != null);

  @override

  /// Country code
  final String code;
  @override

  /// Phone number
  final String number;

  @override
  String toString() {
    return 'PhoneNumber(code: $code, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneNumber &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(number);

  @override
  _$PhoneNumberCopyWith<_PhoneNumber> get copyWith =>
      __$PhoneNumberCopyWithImpl<_PhoneNumber>(this, _$identity);
}

abstract class _PhoneNumber implements PhoneNumber {
  const factory _PhoneNumber({@required String code, @required String number}) =
      _$_PhoneNumber;

  @override

  /// Country code
  String get code;
  @override

  /// Phone number
  String get number;
  @override
  _$PhoneNumberCopyWith<_PhoneNumber> get copyWith;
}
