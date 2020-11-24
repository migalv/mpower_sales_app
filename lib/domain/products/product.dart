import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/core/i_db_entity.dart';

part 'product.freezed.dart';

@freezed

/// Represents the products that can be sold
abstract class Product with _$Product implements IDBEntity {
  const factory Product({
    @required String id,

    /// The name of the product
    @required String name,

    /// A 3 digit & 3 letters unique identifier of the product. ex: ABC-123
    @required String sku,

    /// Short description of the product
    @required String description,
  }) = _Product;
}
