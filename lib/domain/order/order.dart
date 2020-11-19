import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/core/unique_id.dart';
import 'package:sales_app/domain/customer/customer.dart';
import 'package:sales_app/domain/order/attachment/attachment.dart';
import 'package:sales_app/domain/order/order_item/order_item.dart';
import 'package:sales_app/domain/order/order_status.dart';
import 'package:sales_app/domain/order/payment_method.dart';

part 'order.freezed.dart';

@freezed
abstract class Order with _$Order {
  const factory Order({
    @required UniqueId uid,
    @required Customer customer,
    @required PaymentMethod paymentMethod,
    @required List<Attachment> attachments,
    @required OrderStatus status,
    @required List<OrderItem> orderItems,
  }) = _Order;
}
