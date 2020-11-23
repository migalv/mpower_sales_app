import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/core/i_db_entity.dart';
import 'package:sales_app/domain/products/product.dart';

part 'stock_unit.freezed.dart';

@freezed

/// Represents the actual physical product
abstract class StockUnit with _$StockUnit implements IDBEntity {
  const factory StockUnit({
    @required String id,

    /// A unique 9 digit number to represent each stock unit
    @required String upc,

    /// The product that this Stock Unit represents
    @required Product product,
  }) = _StockUnit;
}
