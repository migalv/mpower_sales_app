/// Represents the status of the order
enum OrderStatus {
  /// When the order is just created
  // ignore: constant_identifier_names
  WAITING,

  /// When the order is being delivered to a customer
  // ignore: constant_identifier_names
  DELIVERING,

  /// When the order has been confirmed as the delivered
  // ignore: constant_identifier_names
  DELIVERED,

  /// When the order has been canceled
  // ignore: constant_identifier_names
  CANCELED,
}
