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
      {@required Product product, @required List<StockUnit> linkedStockUnits}) {
    return _OrderItem(
      product: product,
      linkedStockUnits: linkedStockUnits,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OrderItem = _$OrderItemTearOff();

/// @nodoc
mixin _$OrderItem {
  Product get product;
  List<StockUnit> get linkedStockUnits;

  $OrderItemCopyWith<OrderItem> get copyWith;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res>;
  $Res call({Product product, List<StockUnit> linkedStockUnits});

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
  }) {
    return _then(_value.copyWith(
      product: product == freezed ? _value.product : product as Product,
      linkedStockUnits: linkedStockUnits == freezed
          ? _value.linkedStockUnits
          : linkedStockUnits as List<StockUnit>,
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
  $Res call({Product product, List<StockUnit> linkedStockUnits});

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
  }) {
    return _then(_OrderItem(
      product: product == freezed ? _value.product : product as Product,
      linkedStockUnits: linkedStockUnits == freezed
          ? _value.linkedStockUnits
          : linkedStockUnits as List<StockUnit>,
    ));
  }
}

/// @nodoc
class _$_OrderItem implements _OrderItem {
  const _$_OrderItem({@required this.product, @required this.linkedStockUnits})
      : assert(product != null),
        assert(linkedStockUnits != null);

  @override
  final Product product;
  @override
  final List<StockUnit> linkedStockUnits;

  @override
  String toString() {
    return 'OrderItem(product: $product, linkedStockUnits: $linkedStockUnits)';
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
                    .equals(other.linkedStockUnits, linkedStockUnits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(linkedStockUnits);

  @override
  _$OrderItemCopyWith<_OrderItem> get copyWith =>
      __$OrderItemCopyWithImpl<_OrderItem>(this, _$identity);
}

abstract class _OrderItem implements OrderItem {
  const factory _OrderItem(
      {@required Product product,
      @required List<StockUnit> linkedStockUnits}) = _$_OrderItem;

  @override
  Product get product;
  @override
  List<StockUnit> get linkedStockUnits;
  @override
  _$OrderItemCopyWith<_OrderItem> get copyWith;
}
