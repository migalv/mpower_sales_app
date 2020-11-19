import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/core/unique_id.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product.battery({
    @required UniqueId uid,
    @required String name,
    @required String sku,
    @required String description,
  }) = Battery;

  const factory Product.panel({
    @required UniqueId uid,
    @required String name,
    @required String sku,
    @required String description,
  }) = Panel;

  const factory Product.load({
    @required UniqueId uid,
    @required String name,
    @required String sku,
    @required String description,
  }) = Load;

  const factory Product.mPowerUnit({
    @required UniqueId uid,
    @required String name,
    @required String sku,
    @required String description,
  }) = MPowerUnit;
}
