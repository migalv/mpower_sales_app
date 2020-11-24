// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OrderTearOff {
  const _$OrderTearOff();

// ignore: unused_element
  _Order call(
      {@required String id,
      @required Customer customer,
      @required PaymentMethod paymentMethod,
      @required List<Attachment> attachments,
      @required OrderStatus status,
      @required List<OrderItem> orderItems}) {
    return _Order(
      id: id,
      customer: customer,
      paymentMethod: paymentMethod,
      attachments: attachments,
      status: status,
      orderItems: orderItems,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Order = _$OrderTearOff();

/// @nodoc
mixin _$Order {
  String get id;

  /// The customer that has made the order
  Customer get customer;

  /// The payment method used for the order
  PaymentMethod get paymentMethod;

  /// The attachments related to the order (Contract, Loan application, etc.)
  List<Attachment> get attachments;

  /// The current status of the order (WAITING, DELIVERING, DELIVERED, CANCELED)
  OrderStatus get status;

  /// The list of items (products) the customer has requested for the order
  List<OrderItem> get orderItems;

  $OrderCopyWith<Order> get copyWith;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call(
      {String id,
      Customer customer,
      PaymentMethod paymentMethod,
      List<Attachment> attachments,
      OrderStatus status,
      List<OrderItem> orderItems});

  $CustomerCopyWith<$Res> get customer;
  $PaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

  @override
  $Res call({
    Object id = freezed,
    Object customer = freezed,
    Object paymentMethod = freezed,
    Object attachments = freezed,
    Object status = freezed,
    Object orderItems = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      customer: customer == freezed ? _value.customer : customer as Customer,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod as PaymentMethod,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments as List<Attachment>,
      status: status == freezed ? _value.status : status as OrderStatus,
      orderItems: orderItems == freezed
          ? _value.orderItems
          : orderItems as List<OrderItem>,
    ));
  }

  @override
  $CustomerCopyWith<$Res> get customer {
    if (_value.customer == null) {
      return null;
    }
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }

  @override
  $PaymentMethodCopyWith<$Res> get paymentMethod {
    if (_value.paymentMethod == null) {
      return null;
    }
    return $PaymentMethodCopyWith<$Res>(_value.paymentMethod, (value) {
      return _then(_value.copyWith(paymentMethod: value));
    });
  }
}

/// @nodoc
abstract class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) then) =
      __$OrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Customer customer,
      PaymentMethod paymentMethod,
      List<Attachment> attachments,
      OrderStatus status,
      List<OrderItem> orderItems});

  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $PaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class __$OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(_Order _value, $Res Function(_Order) _then)
      : super(_value, (v) => _then(v as _Order));

  @override
  _Order get _value => super._value as _Order;

  @override
  $Res call({
    Object id = freezed,
    Object customer = freezed,
    Object paymentMethod = freezed,
    Object attachments = freezed,
    Object status = freezed,
    Object orderItems = freezed,
  }) {
    return _then(_Order(
      id: id == freezed ? _value.id : id as String,
      customer: customer == freezed ? _value.customer : customer as Customer,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod as PaymentMethod,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments as List<Attachment>,
      status: status == freezed ? _value.status : status as OrderStatus,
      orderItems: orderItems == freezed
          ? _value.orderItems
          : orderItems as List<OrderItem>,
    ));
  }
}

/// @nodoc
class _$_Order implements _Order {
  const _$_Order(
      {@required this.id,
      @required this.customer,
      @required this.paymentMethod,
      @required this.attachments,
      @required this.status,
      @required this.orderItems})
      : assert(id != null),
        assert(customer != null),
        assert(paymentMethod != null),
        assert(attachments != null),
        assert(status != null),
        assert(orderItems != null);

  @override
  final String id;
  @override

  /// The customer that has made the order
  final Customer customer;
  @override

  /// The payment method used for the order
  final PaymentMethod paymentMethod;
  @override

  /// The attachments related to the order (Contract, Loan application, etc.)
  final List<Attachment> attachments;
  @override

  /// The current status of the order (WAITING, DELIVERING, DELIVERED, CANCELED)
  final OrderStatus status;
  @override

  /// The list of items (products) the customer has requested for the order
  final List<OrderItem> orderItems;

  @override
  String toString() {
    return 'Order(id: $id, customer: $customer, paymentMethod: $paymentMethod, attachments: $attachments, status: $status, orderItems: $orderItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Order &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality()
                    .equals(other.customer, customer)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)) &&
            (identical(other.attachments, attachments) ||
                const DeepCollectionEquality()
                    .equals(other.attachments, attachments)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.orderItems, orderItems) ||
                const DeepCollectionEquality()
                    .equals(other.orderItems, orderItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(customer) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(attachments) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(orderItems);

  @override
  _$OrderCopyWith<_Order> get copyWith =>
      __$OrderCopyWithImpl<_Order>(this, _$identity);
}

abstract class _Order implements Order {
  const factory _Order(
      {@required String id,
      @required Customer customer,
      @required PaymentMethod paymentMethod,
      @required List<Attachment> attachments,
      @required OrderStatus status,
      @required List<OrderItem> orderItems}) = _$_Order;

  @override
  String get id;
  @override

  /// The customer that has made the order
  Customer get customer;
  @override

  /// The payment method used for the order
  PaymentMethod get paymentMethod;
  @override

  /// The attachments related to the order (Contract, Loan application, etc.)
  List<Attachment> get attachments;
  @override

  /// The current status of the order (WAITING, DELIVERING, DELIVERED, CANCELED)
  OrderStatus get status;
  @override

  /// The list of items (products) the customer has requested for the order
  List<OrderItem> get orderItems;
  @override
  _$OrderCopyWith<_Order> get copyWith;
}
