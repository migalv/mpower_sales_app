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
        // arrange
        final CustomerDTO dto = CustomerDTO.fromDomain(basicCustomer);
        // act
        final result = await localDataSource.save(dto);
        // assert
        expect(result, right(unit));
      },
    );
    test(
      'should correctly override an existing (same id) Customer in the SharedPreferences',
      () async {
        // arrange
        final CustomerDTO dto = CustomerDTO.fromDomain(basicCustomer);

        final CustomerDTO updatedCustomer = dto.copyWith(name: "New name");
        await localDataSource.save(dto);
        // act
        final result = await localDataSource.save(updatedCustomer);
        // assert
        final string = sharedPreferences.getString(CustomerLocalDataSource.key);
        final json = jsonDecode(string) as Map<String, dynamic>;
        final element = json[basicCustomer.id];

        expect(result, right(unit));
        expect(element, updatedCustomer.toJson());
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
        final dto = CustomerDTO.fromDomain(basicCustomer);
        final desiredId = dto.id;
        // act
        final result = await localDataSource.getElementWithId(desiredId);
        // assert
        expect(result, right(dto));
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
        final dto = CustomerDTO.fromDomain(basicCustomer);
        final result = await localDataSource.removeWithId(dto.id);
        final after = await localDataSource.getElementWithId(dto.id);

        // assert
        expect(result, right(dto));
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
        final allCustomers = jsonCustomers.map(
          (id, json) => MapEntry(
            id,
            CustomerDTO.fromLocalDataSource(
                id: id, json: json as Map<String, dynamic>),
          ),
        );
        // act
        final result = await localDataSource.getAll();
        // assert
        expect(result.getOrElse(() => null), allCustomers);
      },
    );

    test(
      'should return an empty map when the DataSource is empty',
      () async {
        // arrange
        for (final id in jsonCustomers.keys) {
          await localDataSource.removeWithId(id);
        }
        // act
        final result = await localDataSource.getAll();
        // assert
        expect(result.getOrElse(() => null), {});
      },
    );
  });

  group('watchAll', () {
    test(
      'should emit all the saved elements',
      () async {
        // arrange
        final Map<String, CustomerDTO> customers =
            (await localDataSource.getAll()).getOrElse(() => null);
        // act
        expectLater(
          localDataSource.watchAll().map((e) => e.getOrElse(() => null)),
          emits(customers),
        );
      },
    );

    test(
      'should emit every time an save or remove is performed on the local storage',
      () async {
        // arrange
        final dto = CustomerDTO.fromDomain(basicCustomer);

        final Map<String, CustomerDTO> initialCustomers =
            (await localDataSource.getAll()).getOrElse(() => null);

        final Map<String, CustomerDTO> customers1 = Map.from(initialCustomers)
          ..remove(dto.id);

        final Map<String, CustomerDTO> customers2 = Map.from(customers1)
          ..putIfAbsent("newId1", () => dto.copyWith(id: "newId1"));

        final Map<String, CustomerDTO> customers3 = Map.from(customers2)
          ..putIfAbsent("newId2", () => dto.copyWith(id: "newId2"));

        final Map<String, CustomerDTO> customers4 = Map.from(customers3)
          ..putIfAbsent("newId3", () => dto.copyWith(id: "newId3"));

        // act
        expectLater(
          localDataSource.watchAll().map((e) => e.getOrElse(() => null)),
          emitsInOrder([
            customers1,
            customers1,
            customers2,
            customers3,
            customers4,
          ]),
        );

        await localDataSource.removeWithId(dto.id);
        await localDataSource.save(dto.copyWith(id: "newId1"));
        await localDataSource.save(dto.copyWith(id: "newId2"));
        await localDataSource.save(dto.copyWith(id: "newId3"));
      },
      skip: true,
    );
  });

  group('clear', () {
    test(
      'should remove all entities saved in the SharedPreferences',
      () async {
        // act
        final result = await localDataSource.clear();
        expectLater(
          localDataSource.watchAll().map((e) => e.getOrElse(() => null)),
          emits({}),
        );
        // assert
        final savedCustomers = await localDataSource.getAll();
        expect(result, right(unit));
        expect(null, sharedPreferences.getString(CustomerLocalDataSource.key));
        expect(savedCustomers.getOrElse(() => null), {});
      },
    );
  });
}

Customer basicCustomer = Customer.person(
  id: "0",
  name: "Basic",
  lastName: "Customer",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  updatedAt: 0,
);

Customer notInDataSource = Customer.person(
  id: "adsd",
  name: "Not In",
  lastName: "Data Source",
  phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
  updatedAt: 0,
);
