import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/core/unique_id.dart';

part 'stock_unit.freezed.dart';

@freezed
abstract class StockUnit with _$StockUnit {
  const factory StockUnit({
    @required UniqueId uid,
    @required String upc,
    @required UniqueId productId,
    @required String productSku,
  }) = _StockUnit;
}
