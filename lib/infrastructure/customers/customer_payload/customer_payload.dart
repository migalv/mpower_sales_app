import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';

part 'customer_payload.freezed.dart';
part 'customer_payload.g.dart';

@freezed

/// Customer payload used for Firebase Functions
abstract class CustomerPayload with _$CustomerPayload {
  const factory CustomerPayload({
    @required String name,
    @required String teamId,
    @required String teamName,
    @required CustomerType type,
    String surname,
    Map<String, dynamic> extraData,
  }) = _CustomerPayload;

  /// Transforms a Customer Entity encoded using JSON into a CustomerDTO
  factory CustomerPayload.fromJson(Map<String, dynamic> json) =>
      _$CustomerPayloadFromJson(json);

  factory CustomerPayload.fromDTO(CustomerDTO dto) => CustomerPayload(
        name: dto.name,
        teamId: dto.teamId,
        teamName: dto.teamName,
        type: dto.type,
        surname: dto.surname,
      );
}
