import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';

part 'customer_firestore_dto.freezed.dart';
part 'customer_firestore_dto.g.dart';

@freezed
abstract class CustomerFirestoreDTO with _$CustomerFirestoreDTO {
  const factory CustomerFirestoreDTO({
    @JsonKey(ignore: true) @required String id,
    @required String name,
    @JsonKey(name: 'availableTo') @required Map<String, dynamic> availableTo,
    @required int createdAt,
    @required String createdBy,
    @required String createdByName,
    @required String lastUpdatedBy,
    @required String lastUpdatedByName,
    @required int type,
    String surname,
    String farmerId,
    String employeeNum,
    String nrc,
    int dateOfBirth,
    String email,
    @PhoneNumberConverter() PhoneNumber phone,
  }) = _CustomerFirestoreDTO;

  Customer toDomain() {
    Customer customer;

    return customer;
  }

  factory CustomerFirestoreDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerFirestoreDTOFromJson(json);

  factory CustomerFirestoreDTO.fromFirestore(DocumentSnapshot doc) {
    return CustomerFirestoreDTO.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
