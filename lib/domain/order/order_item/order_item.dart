import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/product/product.dart';
import 'package:sales_app/domain/stock_unit/stock_unit.dart';

part 'order_item.freezed.dart';

@freezed

/// Represents a combination of a Product and Linked stock units
abstract class OrderItem with _$OrderItem {
  const factory OrderItem({
    /// The product that was added to the order
    @required Product product,

    /// The stock units that were "linked" to the order
    @required List<StockUnit> linkedStockUnits,

    /// The number of units of that product that were requested in the order
    @required int units,
  }) = _OrderItem;

  /// This creates an empty order item for a specific product & units
  factory OrderItem.empty({
    @required Product product,
    @required int units,
  }) =>
      OrderItem(product: product, linkedStockUnits: [], units: units);
}
