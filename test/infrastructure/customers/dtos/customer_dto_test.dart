import 'package:flutter_test/flutter_test.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/personal_id/personal_id.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  group('fromDomain', () {
    test(
      'should transform the most basic person Customer Entity into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.basicCustomer.index;
        final customerDTO = CustomerDTO.fromDomain(correctCustomers[index]);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomerJsons[index]));
      },
    );

    test(
      'should transform the most basic company Customer Entity into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.companyCustomer.index;
        final customerDTO = CustomerDTO.fromDomain(correctCustomers[index]);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomerJsons[index]));
      },
    );

    test(
      'should transform a person Customer Entity with a birthdate into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.birthDateCustomer.index;
        final customerDTO = CustomerDTO.fromDomain(correctCustomers[index]);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomerJsons[index]));
      },
    );

    test(
      'should transform a person Customer Entity with nrc into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.nrcCustomer.index;
        final customerDTO = CustomerDTO.fromDomain(correctCustomers[index]);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomerJsons[index]));
      },
    );

    test(
      'should transform a person Customer Entity with employeeNum into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.employeeNumCustomer.index;
        final customerDTO = CustomerDTO.fromDomain(correctCustomers[index]);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomerJsons[index]));
      },
    );

    test(
      'should transform a person Customer Entity with farmerId into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.farmerIdCustomer.index;
        final customerDTO = CustomerDTO.fromDomain(correctCustomers[index]);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomerJsons[index]));
      },
    );

    test(
      'should transform a person Customer Entity with nationalId into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.nationalIdCustomer.index;
        final customerDTO = CustomerDTO.fromDomain(correctCustomers[index]);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomerJsons[index]));
      },
    );

    test(
      'should transform a complete person Customer Entity into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.completeCustomer.index;
        final customerDTO = CustomerDTO.fromDomain(correctCustomers[index]);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomerJsons[index]));
      },
    );

    test(
      'should transform a list of Customer Entities into a valid JSON list using toJson',
      () async {
        // act
        final customerDTOs =
            correctCustomers.map((c) => CustomerDTO.fromDomain(c)).toList();
        final result = customerDTOs.map((dto) => dto.toJson()).toList();
        // assert
        expect(result, equals(correctCustomerJsons));
      },
    );
  });

  /////////////////////////////////////////////////////////////////////////////
  ///                                                                       ///
  ///                             NEW GROUP                                 ///
  ///                                                                       ///
  /////////////////////////////////////////////////////////////////////////////

  group('toDomain', () {
    test(
      'should transform the most basic person CustomerDTO into a valid Customer Entity',
      () async {
        // act
        final int index = CustomerIndex.basicCustomer.index;
        final customerDTO = CustomerDTO.fromJson(correctCustomerJsons[index]);
        final result = customerDTO.toDomain();
        // assert
        expect(result, equals(correctCustomers[index]));
      },
    );

    test(
      'should transform the most basic company CustomerDTO into a valid Customer Entity',
      () async {
        // act
        final int index = CustomerIndex.companyCustomer.index;
        final customerDTO = CustomerDTO.fromDomain(correctCustomers[index]);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomerJsons[index]));
      },
    );

    test(
      'should transform a person CustomerDTO with a birthdate into a valid Customer Entity',
      () async {
        // act
        final int index = CustomerIndex.birthDateCustomer.index;
        final customerDTO = CustomerDTO.fromDomain(correctCustomers[index]);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomerJsons[index]));
      },
    );

    test(
      'should transform a person CustomerDTO with nrc into a valid Customer Entity',
      () async {
        // act
        final int index = CustomerIndex.nrcCustomer.index;
        final customerDTO = CustomerDTO.fromDomain(correctCustomers[index]);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomerJsons[index]));
      },
    );

    test(
      'should transform a person CustomerDTO with employeeNum into a valid Customer Entity',
      () async {
        // act
        final int index = CustomerIndex.employeeNumCustomer.index;
        final customerDTO = CustomerDTO.fromDomain(correctCustomers[index]);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomerJsons[index]));
      },
    );

    test(
      'should transform a person CustomerDTO with farmerId into a valid Customer Entity',
      () async {
        // act
        final int index = CustomerIndex.farmerIdCustomer.index;
        final customerDTO = CustomerDTO.fromDomain(correctCustomers[index]);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomerJsons[index]));
      },
    );

    test(
      'should transform a person CustomerDTO with nationalId into a valid Customer Entity',
      () async {
        // act
        final int index = CustomerIndex.nationalIdCustomer.index;
        final customerDTO = CustomerDTO.fromDomain(correctCustomers[index]);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomerJsons[index]));
      },
    );

    test(
      'should transform a complete person CustomerDTO into a valid Customer Entity',
      () async {
        // act
        final int index = CustomerIndex.completeCustomer.index;
        final customerDTO = CustomerDTO.fromDomain(correctCustomers[index]);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomerJsons[index]));
      },
    );

    test(
      'should transform a list of Customer Entities into a valid JSON list using toJson',
      () async {
        // act
        final customerDTOs =
            correctCustomers.map((c) => CustomerDTO.fromDomain(c)).toList();
        final result = customerDTOs.map((dto) => dto.toJson()).toList();
        // assert
        expect(result, equals(correctCustomerJsons));
      },
    );
  });
}

List<Map<String, dynamic>> correctCustomerJsons =
    jsonFixtureAsList('customers/dto_tests/customers.json')
        .cast<Map<String, dynamic>>();

Customer basicCustomer = Customer.person(
  id: "0",
  name: "Basic",
  lastName: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
);

Customer companyCustomer = Customer.company(
  id: "1",
  name: "Company 1",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
);

Customer birthDateCustomer = Customer.person(
  id: "2",
  name: "Birthdate",
  lastName: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  birthDate: DateTime.fromMillisecondsSinceEpoch(1606311725000),
);

Customer nrcCustomer = Customer.person(
  id: "3",
  name: "NRC",
  lastName: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  personalId: const PersonalId.nrc(nrc: "1234567/90"),
);

Customer employeeNumCustomer = Customer.person(
  id: "4",
  name: "EmployeeNum",
  lastName: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  personalId: const PersonalId.employeeNum(employeeNum: "1234567090"),
);

Customer farmerIdCustomer = Customer.person(
  id: "5",
  name: "FarmerId",
  lastName: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  personalId: const PersonalId.farmerId(farmerId: "1234567090"),
);

Customer nationalIdCustomer = Customer.person(
  id: "6",
  name: "NationalId",
  lastName: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  personalId: const PersonalId.nationalId(nationalId: "1234567090"),
);

Customer completeCustomer = Customer.person(
  id: "7",
  name: "Complete",
  lastName: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  birthDate: DateTime.fromMillisecondsSinceEpoch(1606311725000),
  personalId: const PersonalId.nrc(nrc: "1234567/90"),
);

List<Customer> correctCustomers = [
  basicCustomer,
  companyCustomer,
  birthDateCustomer,
  nrcCustomer,
  employeeNumCustomer,
  farmerIdCustomer,
  nationalIdCustomer,
  completeCustomer,
];

enum CustomerIndex {
  basicCustomer,
  companyCustomer,
  birthDateCustomer,
  nrcCustomer,
  employeeNumCustomer,
  farmerIdCustomer,
  nationalIdCustomer,
  completeCustomer,
}
