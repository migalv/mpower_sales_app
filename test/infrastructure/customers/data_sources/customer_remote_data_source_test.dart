import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/infrastructure/customers/data_sources/customer_remote_data_source.dart';
import 'package:sales_app/infrastructure/core/firestore_helpers.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  CustomerRemoteDataSource remoteDataSource;
  MockFirestoreInstance mockFirestore;

  final Map<String, dynamic> customersJson =
      jsonFixtureAsMap('customers/customers.json')["customers"]
          as Map<String, dynamic>;
  List<Customer> tCustomers;

  setUp(() {
    mockFirestore = MockFirestoreInstance();
    remoteDataSource = CustomerRemoteDataSource(mockFirestore);

    tCustomers = customersJson.entries
        .map((e) => CustomerDTO.fromLocalDataSource(json: e.value, id: e.key)
            .toDomain())
        .toList();
  });

  group('getAll', () {
    test(
      'should return all available customers for the user',
      () async {
        // arrange
        for (final customer in tCustomers) {
          await mockFirestore.customersCollection
              .doc(customer.id)
              .set(CustomerDTO.fromDomain(customer).toJson());
        }
        // act
        final result = await remoteDataSource.getAll();
        // assert
        expect(result.getOrElse(() => null), equals(tCustomers));
      },
    );

    test(
      'should return empty list when no customers are available',
      () async {
        // act
        final result = await remoteDataSource.getAll();
        // assert
        expect(result.getOrElse(() => null), equals([]));
      },
    );
  });

  group('getElementWithId', () {
    test(
      'should return a Customer with the desired id',
      () async {
        // arrange
        final Customer expectedCustomer = tCustomers[0];
        for (final customer in tCustomers) {
          await mockFirestore.customersCollection
              .doc(customer.id)
              .set(CustomerDTO.fromDomain(customer).toJson());
        }
        // act
        final result =
            await remoteDataSource.getElementWithId(expectedCustomer.id);
        // assert
        expect(result, right(expectedCustomer));
      },
    );

    test(
      'should return ElementNotFound Failure when getting an unsaved customer',
      () async {
        // act
        final result =
            await remoteDataSource.getElementWithId(tCustomers[0].id);
        // assert
        expect(result, left(const DataSourceFailure.elementNotFound()));
      },
    );

    test(
      'should return NullElement Failure when trying to get a customer with id null',
      () async {
        // act
        final result = await remoteDataSource.getElementWithId(null);
        // assert
        expect(result, left(const DataSourceFailure.nullElement()));
      },
    );
  });

  group('watchAll', () {
    test(
      'should emit Customer Entities available from Firestore',
      () async {
        // arrange
        for (final customer in tCustomers) {
          await mockFirestore.customersCollection
              .doc(customer.id)
              .set(CustomerDTO.fromDomain(customer).toJson());
        }
        // act
        expectLater(
          remoteDataSource.watchAll().map((e) => e.getOrElse(() => null)),
          emits(tCustomers),
        );
      },
    );
  });
}
