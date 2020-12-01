import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/personal_id/personal_id.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number_converter.dart';
import 'package:sales_app/domain/i_entity.dart';

part 'customer_dto.freezed.dart';
part 'customer_dto.g.dart';

@freezed

/// Data Transfer Object used to store Customer Entities in Data Sources
abstract class CustomerDTO implements _$CustomerDTO, IEntity {
  const CustomerDTO._();

  const factory CustomerDTO._private({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required @PhoneNumberConverter() PhoneNumber phone,
    @required CustomerType type,
    String surname,
    int dateOfBirth,
    String email,
    String nrc,
    String employeeNum,
    String farmerId,
    String nationalId,

    /// Timestamp when this customer was created
    int createdAt,

    /// Unique id of the user that created this customer
    String createdBy,

    /// Timestamp when this customer was last updated (Locally or Remotely)
    int updatedAt,
  }) = _CustomerDTO;

  /// Transforms a Customer Entity into a CustomerDTO
  factory CustomerDTO.fromDomain(Customer customer) {
    return customer.map(
      person: (p) {
        String nrc, employeeNum, farmerId, nationalId;

        if (p.personalId != null) {
          p.personalId.when(
            nrc: (id) => nrc = id,
            employeeNum: (id) => employeeNum = id,
            farmerId: (id) => farmerId = id,
            nationalId: (id) => nationalId = id,
          );
        }

        return CustomerDTO._private(
          id: p.id,
          name: p.name,
          surname: p.lastName,
          phone: p.phoneNumber,
          dateOfBirth: p.birthDate?.millisecondsSinceEpoch,
          nrc: nrc,
          employeeNum: employeeNum,
          farmerId: farmerId,
          nationalId: nationalId,
          email: p.email,
          type: CustomerType.values[p.type],
        );
      },
      company: (c) {
        return CustomerDTO._private(
          id: c.id,
          name: c.name,
          phone: c.phoneNumber,
          type: CustomerType.values[c.type],
        );
      },
    );
  }

  @override
  List<Object> get props => [id];

  @override
  bool get stringify => false;

  /// Transforms a Customer Entity encoded using JSON into a CustomerDTO
  factory CustomerDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerDTOFromJson(json);

  /// Transforms a locally saved customer into a CustomerDTO
  factory CustomerDTO.fromLocalDataSource({
    /// The id of the Customer (usally as the key of the JSON Map)
    @required String id,
    @required dynamic json,
  }) =>
      CustomerDTO.fromJson(json as Map<String, dynamic>).copyWith(id: id);

  /// Transforms a Customer Document from Firestore to a CustomerDTO
  factory CustomerDTO.fromFirestore(DocumentSnapshot doc) =>
      CustomerDTO.fromJson(doc.data()).copyWith(id: doc.id);
}

extension CustomerDTOX on CustomerDTO {
  /// Transforms a CustomerDTO into a Customer Entity
  Customer toDomain() {
    Customer customer;
    PersonalId personalId;

    if (nrc != null) {
      personalId = PersonalId.nrc(nrc: nrc);
    } else if (employeeNum != null) {
      personalId = PersonalId.employeeNum(employeeNum: employeeNum);
    } else if (farmerId != null) {
      personalId = PersonalId.farmerId(farmerId: farmerId);
    } else if (nationalId != null) {
      personalId = PersonalId.nationalId(nationalId: nationalId);
    }

    DateTime brithDateFromMiliseconds;
    if (dateOfBirth != null) {
      brithDateFromMiliseconds =
          DateTime.fromMillisecondsSinceEpoch(dateOfBirth);
    }

    switch (type) {
      case CustomerType.person:
        customer = Customer.person(
          id: id,
          name: name,
          lastName: surname,
          phoneNumber: phone,
          birthDate: brithDateFromMiliseconds,
          personalId: personalId,
        );
        break;
      case CustomerType.company:
        customer = Customer.company(
          id: id,
          name: name,
          phoneNumber: phone,
        );
        break;
    }

    return customer;
  }
}
