import 'package:flutter_test/flutter_test.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/particular_id/particular_id.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';
import 'package:sales_app/domain/teams/team.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_firefunc_dto.dart';

void main() {
  String customerId;
  Team customerTeam;
  String customerName;
  String customerLastName;
  PhoneNumber customerPhoneNumber;
  DateTime customerBirthDate;

  Customer tCustomer;

  setUp(() {
    customerId = "abc";
    customerTeam = const Team(id: "abc", name: "Team 1");
    customerName = "Miguel";
    customerLastName = "Test";
    customerPhoneNumber = const PhoneNumber(
      code: "34",
      number: "123456789",
    );
    customerBirthDate = DateTime.now();

    tCustomer = Customer.particular(
      id: customerId,
      team: customerTeam,
      name: customerName,
      lastName: customerLastName,
      phoneNumber: customerPhoneNumber,
      birthDate: customerBirthDate,
    );
  });

  group('CustomerFireFuncDTO', () {
    group('.fromDomain', () {
      test(
        'should enconde a Customer Entity to a correctly formatted json',
        () async {
          // arrange
          final CustomerFireFuncDTO customerDTO =
              CustomerFireFuncDTO.fromDomain(tCustomer);
          final expectedJson = {
            "customer_id": customerId,
            "name": customerName,
            "team_id": customerTeam.id,
            "team_name": customerTeam.name,
            "surname": customerLastName,
            "type": tCustomer.type,
          };
          // act
          final result = customerDTO.toJson();
          // assert
          expect(result, equals(expectedJson));
        },
      );

      test(
        'should encode NRC of a Customer correctly',
        () async {
          // arrange
          const String nrc = "123456789/32";
          const String nrcKey = "nrc";
          final Customer nrcCustomer = Customer.particular(
            id: customerId,
            team: customerTeam,
            name: customerName,
            particularId: const ParticularId(key: nrcKey, value: nrc),
            lastName: customerLastName,
            phoneNumber: customerPhoneNumber,
          );

          final expectedJson = {
            "customer_id": customerId,
            "name": customerName,
            "team_id": customerTeam.id,
            "team_name": customerTeam.name,
            "surname": customerLastName,
            nrcKey: nrc,
            "type": tCustomer.type,
          };

          final CustomerFireFuncDTO customerDTO =
              CustomerFireFuncDTO.fromDomain(nrcCustomer);
          // act
          final result = customerDTO.toJson();
          // assert
          expect(result, equals(expectedJson));
        },
      );

      test(
        'should encode Employee Number of a Customer correctly',
        () async {
          // arrange
          const String employeeNum = "123456";
          const String employeeNumKey = "employee_num";
          final Customer employeeNumCustomer = Customer.particular(
            id: customerId,
            team: customerTeam,
            name: customerName,
            particularId:
                const ParticularId(key: employeeNumKey, value: employeeNum),
            lastName: customerLastName,
            phoneNumber: customerPhoneNumber,
          );

          final expectedJson = {
            "customer_id": customerId,
            "name": customerName,
            "team_id": customerTeam.id,
            "team_name": customerTeam.name,
            "surname": customerLastName,
            employeeNumKey: employeeNum,
            "type": tCustomer.type,
          };

          final CustomerFireFuncDTO customerDTO =
              CustomerFireFuncDTO.fromDomain(employeeNumCustomer);
          // act
          final result = customerDTO.toJson();
          // assert
          expect(result, equals(expectedJson));
        },
      );

      test(
        'should encode National Id of a Customer correctly',
        () async {
          // arrange
          const String nationalId = "02730230P";
          const String nationalIdKey = "national_id";
          final Customer nationalIdCustomer = Customer.particular(
            id: customerId,
            team: customerTeam,
            name: customerName,
            particularId:
                const ParticularId(key: nationalIdKey, value: nationalId),
            lastName: customerLastName,
            phoneNumber: customerPhoneNumber,
          );

          final expectedJson = {
            "customer_id": customerId,
            "name": customerName,
            "team_id": customerTeam.id,
            "team_name": customerTeam.name,
            "surname": customerLastName,
            nationalIdKey: nationalId,
            "type": tCustomer.type,
          };

          final CustomerFireFuncDTO customerDTO =
              CustomerFireFuncDTO.fromDomain(nationalIdCustomer);
          // act
          final result = customerDTO.toJson();
          // assert
          expect(result, equals(expectedJson));
        },
      );

      test(
        "should add the correct type when the customer it's a Company",
        () async {
          // arrange
          final Customer tCustomer = Customer.company(
            id: customerId,
            team: customerTeam,
            name: customerName,
            phoneNumber: customerPhoneNumber,
          );

          final expectedJson = {
            "customer_id": customerId,
            "name": customerName,
            "team_id": customerTeam.id,
            "team_name": customerTeam.name,
            "type": tCustomer.type,
          };

          final CustomerFireFuncDTO customerDTO =
              CustomerFireFuncDTO.fromDomain(tCustomer);

          // act
          final result = customerDTO.toJson();

          // assert
          expect(result, equals(expectedJson));
        },
      );

      test(
        "should add the correct type when the customer it's a Particular",
        () async {
          // arrange
          final Customer tCustomer = Customer.particular(
            id: customerId,
            team: customerTeam,
            name: customerName,
            lastName: customerLastName,
            phoneNumber: customerPhoneNumber,
          );

          final expectedJson = {
            "customer_id": customerId,
            "name": customerName,
            "surname": customerLastName,
            "team_id": customerTeam.id,
            "team_name": customerTeam.name,
            "type": tCustomer.type,
          };

          final CustomerFireFuncDTO customerDTO =
              CustomerFireFuncDTO.fromDomain(tCustomer);

          // act
          final result = customerDTO.toJson();

          // assert
          expect(result, equals(expectedJson));
        },
      );
    });
  });
}
