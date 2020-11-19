import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/product/product.dart';
import 'package:sales_app/domain/stock_unit/stock_unit.dart';

part 'order_item.freezed.dart';

@freezed
abstract class OrderItem with _$OrderItem {
  const factory OrderItem({
    @required Product product,
    @required List<StockUnit> linkedStockUnits,
  }) = _OrderItem;

  factory OrderItem.empty({
    @required Product product,
  }) =>
      OrderItem(product: product, linkedStockUnits: []);
}
