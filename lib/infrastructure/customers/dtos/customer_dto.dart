import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/personal_id/personal_id.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number_converter.dart';

part 'customer_dto.freezed.dart';
part 'customer_dto.g.dart';

@freezed

/// CustomerDTO used to store Customer Entities locally
abstract class CustomerDTO with _$CustomerDTO {
  const factory CustomerDTO._({
    @required String id,
    @required String name,
    @required @PhoneNumberConverter() PhoneNumber phoneNumber,
    @required CustomerType type,
    String lastName,
    int birthDate,
    String nrc,
    String employeeNum,
    String farmerId,
    String nationalId,
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

        return CustomerDTO._(
          id: p.id,
          name: p.name,
          lastName: p.lastName,
          phoneNumber: p.phoneNumber,
          birthDate: p.birthDate?.millisecondsSinceEpoch,
          nrc: nrc,
          employeeNum: employeeNum,
          farmerId: farmerId,
          nationalId: nationalId,
          type: CustomerType.values[p.type],
        );
      },
      company: (c) {
        return CustomerDTO._(
          id: c.id,
          name: c.name,
          phoneNumber: c.phoneNumber,
          type: CustomerType.values[c.type],
        );
      },
    );
  }

  /// Transforms a Customer Entity encoded using JSON into a CustomerDTO
  factory CustomerDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerDTOFromJson(json);
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
    if (birthDate != null) {
      brithDateFromMiliseconds = DateTime.fromMillisecondsSinceEpoch(birthDate);
    }

    switch (type) {
      case CustomerType.person:
        customer = Customer.person(
          id: id,
          name: name,
          lastName: lastName,
          phoneNumber: phoneNumber,
          birthDate: brithDateFromMiliseconds,
          personalId: personalId,
        );
        break;
      case CustomerType.company:
        customer = Customer.company(
          id: id,
          name: name,
          phoneNumber: phoneNumber,
        );
        break;
    }

    return customer;
  }
}
