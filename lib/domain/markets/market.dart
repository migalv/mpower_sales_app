import 'package:freezed_annotation/freezed_annotation.dart';

part 'market.freezed.dart';

@freezed
abstract class Market with _$Market {
  const factory Market({
    String id,

    /// The name of the market
    @required String name,

    /// Currency iso code
    @required String currency,

    /// The personal id documents available for this market
    @required List<String> documentMethods,

    /// Country iso code
    @required String iso,

    /// A list of payment methods that are available for this market
    @required List<int> paymentMethods,
  }) = _Market;
}
