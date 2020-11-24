import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/core/i_db_entity.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/orders/attachment/attachment.dart';
import 'package:sales_app/domain/orders/order_item/order_item.dart';
import 'package:sales_app/domain/orders/order_status.dart';
import 'package:sales_app/domain/orders/payment_method/payment_method.dart';

part 'order.freezed.dart';

@freezed

/// Represents an order accorded by a seller and a customer
abstract class Order with _$Order implements IDBEntity {
  const factory Order({
    @required String id,

    /// The customer that has made the order
    @required Customer customer,

    /// The payment method used for the order
    @required PaymentMethod paymentMethod,

    /// The attachments related to the order (Contract, Loan application, etc.)
    @required List<Attachment> attachments,

    /// The current status of the order (WAITING, DELIVERING, DELIVERED, CANCELED)
    @required OrderStatus status,

    /// The list of items (products) the customer has requested for the order
    @required List<OrderItem> orderItems,
  }) = _Order;
}
