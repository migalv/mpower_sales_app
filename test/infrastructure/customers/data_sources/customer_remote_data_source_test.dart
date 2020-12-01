import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';
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
  Map<String, CustomerDTO> tCustomerDTOs;

  setUp(() {
    mockFirestore = MockFirestoreInstance();
    remoteDataSource = CustomerRemoteDataSource(mockFirestore);

    tCustomerDTOs = customersJson.map((id, json) =>
        MapEntry(id, CustomerDTO.fromLocalDataSource(json: json, id: id)));
  });

  group('getAll', () {
    test(
      'should return all available customers for the user',
      () async {
        // arrange
        for (final dto in tCustomerDTOs.values) {
          await mockFirestore.customersCollection.doc(dto.id).set(dto.toJson());
        }
        // act
        final result = await remoteDataSource.getAll();
        // assert
        expect(result.getOrElse(() => null), equals(tCustomerDTOs));
      },
    );

    test(
      'should return empty list when no customers are available',
      () async {
        // act
        final result = await remoteDataSource.getAll();
        // assert
        expect(result.getOrElse(() => null), equals({}));
      },
    );
  });

  group('getElementWithId', () {
    test(
      'should return a Customer with the desired id',
      () async {
        // arrange
        final expectedCustomer = tCustomerDTOs.values.first;
        for (final dto in tCustomerDTOs.values) {
          await mockFirestore.customersCollection.doc(dto.id).set(dto.toJson());
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
        final result = await remoteDataSource
            .getElementWithId(tCustomerDTOs.values.first.id);
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
        for (final dto in tCustomerDTOs.values) {
          await mockFirestore.customersCollection.doc(dto.id).set(dto.toJson());
        }
        // act
        expectLater(
          remoteDataSource.watchAll().map((e) => e.getOrElse(() => null)),
          emits(tCustomerDTOs),
        );
      },
    );
  });
}
