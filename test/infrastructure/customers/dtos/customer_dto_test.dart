import 'package:flutter_test/flutter_test.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/personal_id/personal_id.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';
import 'package:sales_app/domain/teams/team/team.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  Map<String, dynamic> correctCustomersJson;
  const Team tTeam = Team(id: "team1", name: "Test team");
  setUp(() {
    correctCustomersJson =
        jsonFixtureAsMap('customers/customers.json')["customers"]
            as Map<String, dynamic>;
  });

  group('create', () {
    test(
      'should transform the most basic person Customer Entity into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.basicCustomer.index;
        final customerDTO = CustomerDTO.create(
            customer: correctCustomers[index], forTeam: tTeam);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomersJson.values.toList()[index]));
      },
    );

    test(
      'should transform the most basic company Customer Entity into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.companyCustomer.index;
        final customerDTO = CustomerDTO.create(
            customer: correctCustomers[index], forTeam: tTeam);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomersJson.values.toList()[index]));
      },
    );

    test(
      'should transform a person Customer Entity with a birthdate into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.birthDateCustomer.index;
        final customerDTO = CustomerDTO.create(
            customer: correctCustomers[index], forTeam: tTeam);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomersJson.values.toList()[index]));
      },
    );

    test(
      'should transform a person Customer Entity with nrc into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.nrcCustomer.index;
        final customerDTO = CustomerDTO.create(
            customer: correctCustomers[index], forTeam: tTeam);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomersJson.values.toList()[index]));
      },
    );

    test(
      'should transform a person Customer Entity with employeeNum into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.employeeNumCustomer.index;
        final customerDTO = CustomerDTO.create(
            customer: correctCustomers[index], forTeam: tTeam);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomersJson.values.toList()[index]));
      },
    );

    test(
      'should transform a person Customer Entity with farmerId into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.farmerIdCustomer.index;
        final customerDTO = CustomerDTO.create(
            customer: correctCustomers[index], forTeam: tTeam);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomersJson.values.toList()[index]));
      },
    );

    test(
      'should transform a person Customer Entity with nationalId into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.nationalIdCustomer.index;
        final customerDTO = CustomerDTO.create(
            customer: correctCustomers[index], forTeam: tTeam);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomersJson.values.toList()[index]));
      },
    );

    test(
      'should transform a complete person Customer Entity into a valid JSON when using toJson',
      () async {
        // act
        final int index = CustomerIndex.completeCustomer.index;
        final customerDTO = CustomerDTO.create(
            customer: correctCustomers[index], forTeam: tTeam);
        final result = customerDTO.toJson();
        // assert
        expect(result, equals(correctCustomersJson.values.toList()[index]));
      },
    );

    test(
      'should transform a list of Customer Entities into a valid JSON list using toJson',
      () async {
        // act
        final customerDTOs = correctCustomers
            .map((c) => CustomerDTO.create(customer: c, forTeam: tTeam))
            .toList();
        final result = customerDTOs.map((dto) => dto.toJson()).toList();
        // assert
        expect(result, equals(correctCustomersJson.values.toList()));
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
        final customerDTO = CustomerDTO.fromLocalDataSource(
            json: correctCustomersJson.values.toList()[index]
                as Map<String, dynamic>,
            id: correctCustomersJson.keys.toList()[index]);
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
        final customerDTO = CustomerDTO.fromLocalDataSource(
            json: correctCustomersJson.values.toList()[index]
                as Map<String, dynamic>,
            id: correctCustomersJson.keys.toList()[index]);
        final result = customerDTO.toDomain();
        // assert
        expect(result, equals(correctCustomers[index]));
      },
    );

    test(
      'should transform a person CustomerDTO with a birthdate into a valid Customer Entity',
      () async {
        // act
        final int index = CustomerIndex.birthDateCustomer.index;
        final customerDTO = CustomerDTO.fromLocalDataSource(
            json: correctCustomersJson.values.toList()[index]
                as Map<String, dynamic>,
            id: correctCustomersJson.keys.toList()[index]);
        final result = customerDTO.toDomain();
        // assert
        expect(result, equals(correctCustomers[index]));
      },
    );

    test(
      'should transform a person CustomerDTO with nrc into a valid Customer Entity',
      () async {
        // act
        final int index = CustomerIndex.nrcCustomer.index;
        final customerDTO = CustomerDTO.fromLocalDataSource(
            json: correctCustomersJson.values.toList()[index]
                as Map<String, dynamic>,
            id: correctCustomersJson.keys.toList()[index]);
        final result = customerDTO.toDomain();
        // assert
        expect(result, equals(correctCustomers[index]));
      },
    );

    test(
      'should transform a person CustomerDTO with employeeNum into a valid Customer Entity',
      () async {
        // act
        final int index = CustomerIndex.employeeNumCustomer.index;
        final customerDTO = CustomerDTO.fromLocalDataSource(
            json: correctCustomersJson.values.toList()[index]
                as Map<String, dynamic>,
            id: correctCustomersJson.keys.toList()[index]);
        final result = customerDTO.toDomain();
        // assert
        expect(result, equals(correctCustomers[index]));
      },
    );

    test(
      'should transform a person CustomerDTO with farmerId into a valid Customer Entity',
      () async {
        // act
        final int index = CustomerIndex.farmerIdCustomer.index;
        final customerDTO = CustomerDTO.fromLocalDataSource(
            json: correctCustomersJson.values.toList()[index]
                as Map<String, dynamic>,
            id: correctCustomersJson.keys.toList()[index]);
        final result = customerDTO.toDomain();
        // assert
        expect(result, equals(correctCustomers[index]));
      },
    );

    test(
      'should transform a person CustomerDTO with nationalId into a valid Customer Entity',
      () async {
        // act
        final int index = CustomerIndex.nationalIdCustomer.index;
        final customerDTO = CustomerDTO.fromLocalDataSource(
            json: correctCustomersJson.values.toList()[index]
                as Map<String, dynamic>,
            id: correctCustomersJson.keys.toList()[index]);
        final result = customerDTO.toDomain();
        // assert
        expect(result, equals(correctCustomers[index]));
      },
    );

    test(
      'should transform a complete person CustomerDTO into a valid Customer Entity',
      () async {
        // act
        final int index = CustomerIndex.completeCustomer.index;
        final customerDTO = CustomerDTO.fromLocalDataSource(
            json: correctCustomersJson.values.toList()[index]
                as Map<String, dynamic>,
            id: correctCustomersJson.keys.toList()[index]);
        final result = customerDTO.toDomain();
        // assert
        expect(result, equals(correctCustomers[index]));
      },
    );

    test(
      'should transform a list of Customer DTOs into a valid Customer Entity list',
      () async {
        // act
        final customerDTOs = correctCustomersJson.entries
            .map((e) => CustomerDTO.fromLocalDataSource(
                json: e.value as Map<String, dynamic>, id: e.key))
            .toList();
        final result = customerDTOs.map((dto) => dto.toDomain()).toList();
        // assert
        expect(result, equals(correctCustomers));
      },
    );
  });
}

Customer basicCustomer = Customer.person(
  id: "0",
  name: "Basic",
  surname: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  updatedAt: 0,
);

Customer companyCustomer = Customer.company(
  id: "1",
  name: "Company 1",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  updatedAt: 0,
);

Customer birthDateCustomer = Customer.person(
  id: "2",
  name: "Birthdate",
  surname: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  birthDate: DateTime.fromMillisecondsSinceEpoch(1606311725000),
  updatedAt: 0,
);

Customer nrcCustomer = Customer.person(
  id: "3",
  name: "NRC",
  surname: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  personalId: const PersonalId.nrc(nrc: "1234567/90"),
  updatedAt: 0,
);

Customer employeeNumCustomer = Customer.person(
  id: "4",
  name: "EmployeeNum",
  surname: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  personalId: const PersonalId.employeeNum(employeeNum: "1234567090"),
  updatedAt: 0,
);

Customer farmerIdCustomer = Customer.person(
  id: "5",
  name: "FarmerId",
  surname: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  personalId: const PersonalId.farmerId(farmerId: "1234567090"),
  updatedAt: 0,
);

Customer nationalIdCustomer = Customer.person(
  id: "6",
  name: "NationalId",
  surname: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  personalId: const PersonalId.nationalId(nationalId: "1234567090"),
  updatedAt: 0,
);

Customer completeCustomer = Customer.person(
  id: "7",
  name: "Complete",
  surname: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  birthDate: DateTime.fromMillisecondsSinceEpoch(1606311725000),
  personalId: const PersonalId.nrc(nrc: "1234567/90"),
  updatedAt: 0,
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
