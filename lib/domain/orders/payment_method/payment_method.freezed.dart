// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentMethodTearOff {
  const _$PaymentMethodTearOff();

// ignore: unused_element
  _PaymentMethod call({@required String label, @required int index}) {
    return _PaymentMethod(
      label: label,
      index: index,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentMethod = _$PaymentMethodTearOff();

/// @nodoc
mixin _$PaymentMethod {
  /// The label shown to the user for this payment method
  String get label;

  /// The index in which this payment is saved in the data base
  int get index;

  $PaymentMethodCopyWith<PaymentMethod> get copyWith;
}

/// @nodoc
abstract class $PaymentMethodCopyWith<$Res> {
  factory $PaymentMethodCopyWith(
          PaymentMethod value, $Res Function(PaymentMethod) then) =
      _$PaymentMethodCopyWithImpl<$Res>;
  $Res call({String label, int index});
}

/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._value, this._then);

  final PaymentMethod _value;
  // ignore: unused_field
  final $Res Function(PaymentMethod) _then;

  @override
  $Res call({
    Object label = freezed,
    Object index = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed ? _value.label : label as String,
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
abstract class _$PaymentMethodCopyWith<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  factory _$PaymentMethodCopyWith(
          _PaymentMethod value, $Res Function(_PaymentMethod) then) =
      __$PaymentMethodCopyWithImpl<$Res>;
  @override
  $Res call({String label, int index});
}

/// @nodoc
class __$PaymentMethodCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res>
    implements _$PaymentMethodCopyWith<$Res> {
  __$PaymentMethodCopyWithImpl(
      _PaymentMethod _value, $Res Function(_PaymentMethod) _then)
      : super(_value, (v) => _then(v as _PaymentMethod));

  @override
  _PaymentMethod get _value => super._value as _PaymentMethod;

  @override
  $Res call({
    Object label = freezed,
    Object index = freezed,
  }) {
    return _then(_PaymentMethod(
      label: label == freezed ? _value.label : label as String,
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$_PaymentMethod implements _PaymentMethod {
  _$_PaymentMethod({@required this.label, @required this.index})
      : assert(label != null),
        assert(index != null);

  @override

  /// The label shown to the user for this payment method
  final String label;
  @override

  /// The index in which this payment is saved in the data base
  final int index;

  @override
  String toString() {
    return 'PaymentMethod(label: $label, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentMethod &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(index);

  @override
  _$PaymentMethodCopyWith<_PaymentMethod> get copyWith =>
      __$PaymentMethodCopyWithImpl<_PaymentMethod>(this, _$identity);
}

abstract class _PaymentMethod implements PaymentMethod {
  factory _PaymentMethod({@required String label, @required int index}) =
      _$_PaymentMethod;

  @override

  /// The label shown to the user for this payment method
  String get label;
  @override

  /// The index in which this payment is saved in the data base
  int get index;
  @override
  _$PaymentMethodCopyWith<_PaymentMethod> get copyWith;
}
