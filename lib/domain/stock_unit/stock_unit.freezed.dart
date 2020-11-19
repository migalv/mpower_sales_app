// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'stock_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StockUnitTearOff {
  const _$StockUnitTearOff();

// ignore: unused_element
  _StockUnit call(
      {@required UniqueId uid,
      @required String upc,
      @required Product product}) {
    return _StockUnit(
      uid: uid,
      upc: upc,
      product: product,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StockUnit = _$StockUnitTearOff();

/// @nodoc
mixin _$StockUnit {
  UniqueId get uid;

  /// A unique 9 digit number to represent each stock unit
  String get upc;

  /// The product that this Stock Unit represents
  Product get product;

  $StockUnitCopyWith<StockUnit> get copyWith;
}

/// @nodoc
abstract class $StockUnitCopyWith<$Res> {
  factory $StockUnitCopyWith(StockUnit value, $Res Function(StockUnit) then) =
      _$StockUnitCopyWithImpl<$Res>;
  $Res call({UniqueId uid, String upc, Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$StockUnitCopyWithImpl<$Res> implements $StockUnitCopyWith<$Res> {
  _$StockUnitCopyWithImpl(this._value, this._then);

  final StockUnit _value;
  // ignore: unused_field
  final $Res Function(StockUnit) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object upc = freezed,
    Object product = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      upc: upc == freezed ? _value.upc : upc as String,
      product: product == freezed ? _value.product : product as Product,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    if (_value.product == null) {
      return null;
    }
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$StockUnitCopyWith<$Res> implements $StockUnitCopyWith<$Res> {
  factory _$StockUnitCopyWith(
          _StockUnit value, $Res Function(_StockUnit) then) =
      __$StockUnitCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId uid, String upc, Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$StockUnitCopyWithImpl<$Res> extends _$StockUnitCopyWithImpl<$Res>
    implements _$StockUnitCopyWith<$Res> {
  __$StockUnitCopyWithImpl(_StockUnit _value, $Res Function(_StockUnit) _then)
      : super(_value, (v) => _then(v as _StockUnit));

  @override
  _StockUnit get _value => super._value as _StockUnit;

  @override
  $Res call({
    Object uid = freezed,
    Object upc = freezed,
    Object product = freezed,
  }) {
    return _then(_StockUnit(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      upc: upc == freezed ? _value.upc : upc as String,
      product: product == freezed ? _value.product : product as Product,
    ));
  }
}

/// @nodoc
class _$_StockUnit implements _StockUnit {
  const _$_StockUnit(
      {@required this.uid, @required this.upc, @required this.product})
      : assert(uid != null),
        assert(upc != null),
        assert(product != null);

  @override
  final UniqueId uid;
  @override

  /// A unique 9 digit number to represent each stock unit
  final String upc;
  @override

  /// The product that this Stock Unit represents
  final Product product;

  @override
  String toString() {
    return 'StockUnit(uid: $uid, upc: $upc, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StockUnit &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.upc, upc) ||
                const DeepCollectionEquality().equals(other.upc, upc)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(upc) ^
      const DeepCollectionEquality().hash(product);

  @override
  _$StockUnitCopyWith<_StockUnit> get copyWith =>
      __$StockUnitCopyWithImpl<_StockUnit>(this, _$identity);
}

abstract class _StockUnit implements StockUnit {
  const factory _StockUnit(
      {@required UniqueId uid,
      @required String upc,
      @required Product product}) = _$_StockUnit;

  @override
  UniqueId get uid;
  @override

  /// A unique 9 digit number to represent each stock unit
  String get upc;
  @override

  /// The product that this Stock Unit represents
  Product get product;
  @override
  _$StockUnitCopyWith<_StockUnit> get copyWith;
}
