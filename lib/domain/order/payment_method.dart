import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method.freezed.dart';

@freezed

/// Represents a payment method allowed by MPower
abstract class PaymentMethod implements _$PaymentMethod {
  factory PaymentMethod({
    /// The label shown to the user for this payment method
    @required String label,

    /// The index in which this payment is saved in the data base
    @required int index,
  }) = _PaymentMethod;
}
