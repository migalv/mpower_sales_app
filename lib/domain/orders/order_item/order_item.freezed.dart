// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'order_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OrderItemTearOff {
  const _$OrderItemTearOff();

// ignore: unused_element
  _OrderItem call(
      {@required Product product,
      @required List<StockUnit> linkedStockUnits,
      @required int units}) {
    return _OrderItem(
      product: product,
      linkedStockUnits: linkedStockUnits,
      units: units,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OrderItem = _$OrderItemTearOff();

/// @nodoc
mixin _$OrderItem {
  /// The product that was added to the order
  Product get product;

  /// The stock units that were "linked" to the order
  List<StockUnit> get linkedStockUnits;

  /// The number of units of that product that were requested in the order
  int get units;

  $OrderItemCopyWith<OrderItem> get copyWith;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res>;
  $Res call({Product product, List<StockUnit> linkedStockUnits, int units});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res> implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  final OrderItem _value;
  // ignore: unused_field
  final $Res Function(OrderItem) _then;

  @override
  $Res call({
    Object product = freezed,
    Object linkedStockUnits = freezed,
    Object units = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed ? _value.product : product as Product,
      linkedStockUnits: linkedStockUnits == freezed
          ? _value.linkedStockUnits
          : linkedStockUnits as List<StockUnit>,
      units: units == freezed ? _value.units : units as int,
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
abstract class _$OrderItemCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$OrderItemCopyWith(
          _OrderItem value, $Res Function(_OrderItem) then) =
      __$OrderItemCopyWithImpl<$Res>;
  @override
  $Res call({Product product, List<StockUnit> linkedStockUnits, int units});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$OrderItemCopyWithImpl<$Res> extends _$OrderItemCopyWithImpl<$Res>
    implements _$OrderItemCopyWith<$Res> {
  __$OrderItemCopyWithImpl(_OrderItem _value, $Res Function(_OrderItem) _then)
      : super(_value, (v) => _then(v as _OrderItem));

  @override
  _OrderItem get _value => super._value as _OrderItem;

  @override
  $Res call({
    Object product = freezed,
    Object linkedStockUnits = freezed,
    Object units = freezed,
  }) {
    return _then(_OrderItem(
      product: product == freezed ? _value.product : product as Product,
      linkedStockUnits: linkedStockUnits == freezed
          ? _value.linkedStockUnits
          : linkedStockUnits as List<StockUnit>,
      units: units == freezed ? _value.units : units as int,
    ));
  }
}

/// @nodoc
class _$_OrderItem implements _OrderItem {
  const _$_OrderItem(
      {@required this.product,
      @required this.linkedStockUnits,
      @required this.units})
      : assert(product != null),
        assert(linkedStockUnits != null),
        assert(units != null);

  @override

  /// The product that was added to the order
  final Product product;
  @override

  /// The stock units that were "linked" to the order
  final List<StockUnit> linkedStockUnits;
  @override

  /// The number of units of that product that were requested in the order
  final int units;

  @override
  String toString() {
    return 'OrderItem(product: $product, linkedStockUnits: $linkedStockUnits, units: $units)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderItem &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.linkedStockUnits, linkedStockUnits) ||
                const DeepCollectionEquality()
                    .equals(other.linkedStockUnits, linkedStockUnits)) &&
            (identical(other.units, units) ||
                const DeepCollectionEquality().equals(other.units, units)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(linkedStockUnits) ^
      const DeepCollectionEquality().hash(units);

  @override
  _$OrderItemCopyWith<_OrderItem> get copyWith =>
      __$OrderItemCopyWithImpl<_OrderItem>(this, _$identity);
}

abstract class _OrderItem implements OrderItem {
  const factory _OrderItem(
      {@required Product product,
      @required List<StockUnit> linkedStockUnits,
      @required int units}) = _$_OrderItem;

  @override

  /// The product that was added to the order
  Product get product;
  @override

  /// The stock units that were "linked" to the order
  List<StockUnit> get linkedStockUnits;
  @override

  /// The number of units of that product that were requested in the order
  int get units;
  @override
  _$OrderItemCopyWith<_OrderItem> get copyWith;
}
