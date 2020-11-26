import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';
import 'package:sales_app/infrastructure/customers/data_sources/customer_local_data_source.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../fixtures/fixture_reader.dart';

Future<void> main() async {
  CustomerLocalDataSource localDataSource;

  final sharedPrefCustomers = jsonFixtureAsMap('customers/customers.json');
  final jsonCustomers = sharedPrefCustomers[CustomerLocalDataSource.key];
  SharedPreferences.setMockInitialValues({});

  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  sharedPreferences.setString(
      CustomerLocalDataSource.key, jsonEncode(jsonCustomers));

  setUp(() {
    localDataSource = CustomerLocalDataSource(sharedPreferences);
  });

  group('save', () {
    test(
      'should correctly save a new Customer in the SharedPreferences',
      () async {
        // act
        final result = await localDataSource.save(basicCustomer);
        // assert
        expect(result, right(unit));
      },
    );
    test(
      'should correctly override an existing (same id) Customer in the SharedPreferences',
      () async {
        // arrange
        final Customer updatedCustomer =
            basicCustomer.copyWith(name: "New name");
        await localDataSource.save(basicCustomer);
        // act
        final result = await localDataSource.save(updatedCustomer);
        // assert
        final string = sharedPreferences.getString(CustomerLocalDataSource.key);
        final json = jsonDecode(string) as Map<String, dynamic>;
        final element = json[basicCustomer.id];

        expect(result, right(unit));
        expect(element, CustomerDTO.fromDomain(updatedCustomer).toJson());
        expect(basicCustomer, isNot(updatedCustomer));
      },
    );

    test(
      'should return CannotSaveNullElements Failure if we try to save a null Customer',
      () async {
        // act
        final result = await localDataSource.save(null);
        // assert
        expect(result, left(const DataSourceFailure.cannotSaveNullElements()));
      },
    );
  });

  group('getWithElementId', () {
    test(
      'should return a Customer with that matches the given id',
      () async {
        // arrange
        const desiredId = "0";
        // act
        final result = await localDataSource.getElementWithId(desiredId);
        // assert

        final customerJson = jsonCustomers[desiredId] as Map<String, dynamic>;
        final customer = CustomerDTO.fromJson(customerJson).toDomain();

        expect(result, right(customer));
      },
    );
  });
}

Customer basicCustomer = Customer.person(
  id: "0",
  name: "Basic",
  lastName: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
);
