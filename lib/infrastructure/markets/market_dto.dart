import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/markets/market.dart';

part 'market_dto.freezed.dart';
part 'market_dto.g.dart';

@freezed
abstract class MarketDTO with _$MarketDTO {
  const factory MarketDTO({
    @JsonKey(ignore: true) String id,

    /// Country iso code
    @required String iso,

    /// The name of the market
    @required String name,

    /// Currency iso code
    @required String currency,

    /// A list of payment methods that are available for this market
    @required List<int> paymentMethods,

    /// The personal id documents available for this market
    @required List<String> documentMethods,
  }) = _MarketDTO;

  /// Transforms a JSON encoded Team into a MarketDTO
  factory MarketDTO.fromJson(Map<String, dynamic> json) =>
      _$MarketDTOFromJson(json);

  /// Transforms a Market Document from Firestore to a MarketDTO
  factory MarketDTO.fromFirestore(DocumentSnapshot doc) =>
      MarketDTO.fromJson(doc.data()).copyWith(id: doc.id);
}

extension MarketDTOX on MarketDTO {
  Market toDomain() => Market(
        id: id,
        iso: iso,
        name: name,
        currency: currency,
        paymentMethods: paymentMethods,
        documentMethods: documentMethods,
      );
}
