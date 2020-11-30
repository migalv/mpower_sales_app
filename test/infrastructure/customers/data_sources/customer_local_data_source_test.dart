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

  Map<String, dynamic> sharedPrefCustomers;
  Map<String, dynamic> jsonCustomers;

  SharedPreferences sharedPreferences;

  setUp(() async {
    sharedPrefCustomers = jsonFixtureAsMap('customers/customers.json');
    jsonCustomers = sharedPrefCustomers[CustomerLocalDataSource.key]
        as Map<String, dynamic>;

    SharedPreferences.setMockInitialValues({});
    sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setString(
        CustomerLocalDataSource.key, jsonEncode(jsonCustomers));

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
      'should return NullElement Failure when we try to save a null Customer',
      () async {
        // act
        final result = await localDataSource.save(null);
        // assert
        expect(result, left(const DataSourceFailure.nullElement()));
      },
    );
  });

  group('getWithElementId', () {
    test(
      'should return a Customer that matches the given id',
      () async {
        // arrange
        final desiredId = basicCustomer.id;
        // act
        final result = await localDataSource.getElementWithId(desiredId);
        // assert
        expect(result, right(basicCustomer));
      },
    );

    test(
      'should return NullElement Failure when we try to find a null Customer',
      () async {
        // act
        final result = await localDataSource.getElementWithId(null);
        // assert
        expect(result, left(const DataSourceFailure.nullElement()));
      },
    );

    test(
      'should return ElementNotFound Failure when looking for an unsaved Customer',
      () async {
        // act
        final result =
            await localDataSource.getElementWithId("id_not_existent");
        // assert
        expect(result, left(const DataSourceFailure.elementNotFound()));
      },
    );

    test(
      'should return NoElementsForCollection Failure when no customers are saved',
      () async {
        // act
        sharedPreferences.clear();
        final result = await localDataSource.getElementWithId("");
        // assert
        const key = CustomerLocalDataSource.key;
        expect(result,
            left(const DataSourceFailure.noElementsFor(collection: key)));
      },
    );
  });

  group('removeWithId', () {
    test(
      'should remove the element that matches the given id from the Data Source',
      () async {
        // act
        final result = await localDataSource.removeWithId(basicCustomer.id);
        final after = await localDataSource.getElementWithId(basicCustomer.id);

        // assert
        expect(result, right(basicCustomer));
        expect(after, left(const DataSourceFailure.elementNotFound()));
      },
    );

    test(
      'should return ElementNotFound Failure when the given element is not in the Data Source',
      () async {
        // act

        final result = await localDataSource.removeWithId("id_not_existent");

        // assert
        expect(result, left(const DataSourceFailure.elementNotFound()));
      },
    );

    test(
      'should return NullElement Failure when the given element is null',
      () async {
        // act
        final result = await localDataSource.removeWithId(null);

        // assert
        expect(result, left(const DataSourceFailure.nullElement()));
      },
    );

    test(
      'should return NoElements Failure when no elements are saved',
      () async {
        // act
        sharedPreferences.clear();
        final result = await localDataSource.removeWithId(basicCustomer.id);

        // assert
        const key = CustomerLocalDataSource.key;
        expect(result,
            left(const DataSourceFailure.noElementsFor(collection: key)));
      },
    );
  });

  group('getAll', () {
    test(
      'should return all the elements from the DataSource',
      () async {
        // arrange
        final allCustomers = jsonCustomers.entries
            .map((entry) => CustomerDTO.fromLocalDataSource(
                    json: entry.value as Map<String, dynamic>, id: entry.key)
                .toDomain())
            .toList();
        // act
        final result = await localDataSource.getAll();
        // assert
        expect(result.getOrElse(() => null), allCustomers);
      },
    );

    test(
      'should return an empty list when the DataSource is empty',
      () async {
        // arrange
        for (final id in jsonCustomers.keys) {
          await localDataSource.removeWithId(id);
        }
        // act
        final result = await localDataSource.getAll();
        // assert
        expect(result.getOrElse(() => null), []);
      },
    );
  });

  group('watchAll', () {
    test(
      'should emit all the saved elements',
      () async {
        // arrange
        final List<Customer> customers =
            (await localDataSource.getAll()).getOrElse(() => null);
        // act
        expectLater(
          localDataSource.watchAll(),
          emits(customers),
        );
      },
    );

    test(
      'should emit every time an save or remove is performed on the local storage',
      () async {
        // arrange
        final List<Customer> initialCustomers =
            (await localDataSource.getAll()).getOrElse(() => null);

        final List<Customer> customers1 = List.from(initialCustomers)
          ..removeWhere((c) => c.id == basicCustomer.id);

        final List<Customer> customers2 = List.from(customers1)
          ..add(basicCustomer.copyWith(id: "newId1"));

        final List<Customer> customers3 = List.from(customers2)
          ..add(basicCustomer.copyWith(id: "newId2"));

        final List<Customer> customers4 = List.from(customers3)
          ..add(basicCustomer.copyWith(id: "newId3"));

        // act
        expectLater(
          localDataSource.watchAll(),
          emitsInOrder([
            customers1,
            customers1,
            customers2,
            customers3,
            customers4,
          ]),
        );

        await localDataSource.removeWithId(basicCustomer.id);
        await localDataSource.save(basicCustomer.copyWith(id: "newId1"));
        await localDataSource.save(basicCustomer.copyWith(id: "newId2"));
        await localDataSource.save(basicCustomer.copyWith(id: "newId3"));
      },
    );
  });

  group('clear', () {
    test(
      'should remove all entities saved in the SharedPreferences',
      () async {
        // act
        final result = await localDataSource.clear();
        expectLater(
          localDataSource.watchAll(),
          emits([]),
        );
        // assert
        final savedCustomers = await localDataSource.getAll();
        expect(result, right(unit));
        expect(null, sharedPreferences.getString(CustomerLocalDataSource.key));
        expect(savedCustomers.getOrElse(() => null), []);
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

Customer notInDataSource = Customer.person(
  id: "adsd",
  name: "Not In",
  lastName: "Data Source",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
);
