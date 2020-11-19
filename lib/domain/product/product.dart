import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/core/i_db_entity.dart';
import 'package:sales_app/domain/core/unique_id.dart';

part 'product.freezed.dart';

@freezed

/// Represents the products that can be sold
abstract class Product with _$Product implements IDBEntity {
  /// Represents a battery
  const factory Product.battery({
    @required UniqueId uid,

    /// The name of the product
    @required String name,

    /// A 3 digit & 3 letters unique identifier of the product. ex: ABC-123
    @required String sku,

    /// The description of the product
    @required String description,
  }) = Battery;

  /// Represents a panel
  const factory Product.panel({
    @required UniqueId uid,
    @required String name,
    @required String sku,
    @required String description,
  }) = Panel;

  /// Represents a domestic appliance (TV, Fridge, Fan, Light bulb, etc...)
  const factory Product.load({
    @required UniqueId uid,
    @required String name,
    @required String sku,
    @required String description,
  }) = Load;

  /// MPower products for testing and other cases
  const factory Product.mPowerUnit({
    @required UniqueId uid,
    @required String name,
    @required String sku,
    @required String description,
  }) = MPowerUnit;
}
