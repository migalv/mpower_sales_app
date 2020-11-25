import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';
import 'package:sales_app/infrastructure/customers/data_sources/customer_local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../fixtures/fixture_reader.dart';

Future<void> main() async {
  CustomerLocalDataSource localDataSource;

  SharedPreferences.setMockInitialValues(jsonFixture('customers.json'));
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  final Customer tCustomer0 = Customer.person(
    id: "0",
    name: "Test",
    lastName: "Customer 1",
    phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  );

  final Customer tCustomer1 = Customer.person(
    id: "1",
    name: "Test",
    lastName: "Customer 2",
    phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  );

  final Customer tCustomer2 = Customer.person(
    id: "2",
    name: "Test",
    lastName: "Customer 3",
    phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  );

  final Customer tCustomer3 = Customer.company(
    id: "3",
    name: "Company Test 1",
    phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  );

  setUp(() {
    localDataSource = CustomerLocalDataSource(sharedPreferences);
  });

  group('save', () {
    test(
      'should correctly save a Customer in the SharedPreferences',
      () async {
        // act
        final result = await localDataSource.save(tCustomer0);
        // assert
        expect(result, right(unit));
      },
    );
  });
}
