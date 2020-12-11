import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';
import 'package:sales_app/domain/core/data_sources/i_data_source.dart';
import 'package:sales_app/domain/core/data_sources/i_local_data_source.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/failures/customer_repository_failure.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';
import 'package:sales_app/infrastructure/customers/customer_data_merger.dart';
import 'package:sales_app/infrastructure/customers/customer_repository.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';

import '../../fixtures/fixture_reader.dart';

class MockLocalDataSource extends Mock
    implements ILocalDataSource<CustomerDTO> {}

class MockRemoteDataSource extends Mock implements IDataSource<CustomerDTO> {}

void main() {
  MockLocalDataSource mockLocalDataSource;
  MockRemoteDataSource mockRemoteDataSource;
  CustomerRepository customerRepository;

  final customersJson =
      jsonFixtureAsMap('customers/customers.json')["customers"]
          as Map<String, dynamic>;

  final customersMap = customersJson.map((id, json) =>
      MapEntry(id, CustomerDTO.fromLocalDataSource(id: id, json: json)));

  setUp(() {
    mockLocalDataSource = MockLocalDataSource();
    mockRemoteDataSource = MockRemoteDataSource();
    customerRepository = CustomerRepository(
      localDataSource: mockLocalDataSource,
      remoteDataSource: mockRemoteDataSource,
    );
  });

  group('customersStream', () {
    test(
      'should emit empty list when both data sources are empty',
      () async {
        // arrange
        when(mockRemoteDataSource.watchAll())
            .thenAnswer((_) => Stream.fromIterable([const Right({})]));
        when(mockLocalDataSource.watchAll())
            .thenAnswer((_) => Stream.fromIterable([const Right({})]));
        // act
        expectLater(
          customerRepository.customersStream
              .map((e) => e.getOrElse(() => null)),
          emits([]),
        );
      },
    );

    test(
      'should emit the merged data the data sources',
      () async {
        // arrange
        final remoteData = customersMap;
        final localData = customersMap;
        when(mockRemoteDataSource.watchAll())
            .thenAnswer((_) => Stream.fromIterable([Right(remoteData)]));
        when(mockLocalDataSource.watchAll())
            .thenAnswer((_) => Stream.fromIterable([Right(localData)]));
        final expected =
            CustomerDataMerger(remoteData: remoteData, localData: localData)
                .merge();
        // act
        expectLater(
          customerRepository.customersStream
              .map((e) => e.getOrElse(() => null)),
          emits(expected.toList()),
        );
      },
    );

    test(
      'should emit UnexpectedFailure when the remote DataSource emits an unexpected Failure',
      () async {
        // arrange
        when(mockRemoteDataSource.watchAll()).thenAnswer((_) =>
            Stream.fromIterable(
                [const Left(DataSourceFailure.elementNotFound())]));
        when(mockLocalDataSource.watchAll())
            .thenAnswer((_) => Stream.fromIterable([const Right({})]));
        // act
        expectLater(
          customerRepository.customersStream,
          emits(left(const CustomerRepositoryFailure.unexpectedFailure())),
        );
      },
    );

    test(
      'should emit UnexpectedFailure when the local DataSource returns an unexpected Failure',
      () async {
        // arrange
        when(mockRemoteDataSource.watchAll())
            .thenAnswer((_) => Stream.fromIterable([const Right({})]));
        when(mockLocalDataSource.watchAll()).thenAnswer((_) =>
            Stream.fromIterable(
                [const Left(DataSourceFailure.elementNotFound())]));
        // act
        expectLater(
          customerRepository.customersStream,
          emits(left(const CustomerRepositoryFailure.unexpectedFailure())),
        );
      },
    );

    test(
      'should emit InsufficientPermissions Failure when the remote DataSource '
      'returns a InsufficientPermissions Failure',
      () async {
        // arrange
        when(mockRemoteDataSource.watchAll()).thenAnswer((_) =>
            Stream.fromIterable(
                [const Left(DataSourceFailure.insufficientPermissions())]));
        when(mockLocalDataSource.watchAll())
            .thenAnswer((_) => Stream.fromIterable([const Right({})]));
        // act
        expectLater(
          customerRepository.customersStream,
          emits(
              left(const CustomerRepositoryFailure.insufficientPermissions())),
        );
      },
    );
  });

  group('create', () {
    final Customer tCustomer = Customer.person(
      id: "1",
      name: "Test",
      surname: "Customer",
      phoneNumber: const PhoneNumber(code: "34", number: "123456789"),
      updatedAt: 0,
    );
    test(
      'should correctly save the given customer in the Local Data Source',
      () async {
        // arrange
        when(mockLocalDataSource.save(any))
            .thenAnswer((_) async => const Right(unit));
        // act
        final result = await customerRepository.create(tCustomer);
        // assert
        expect(result, right(unit));
        verify(mockLocalDataSource.save(CustomerDTO.fromDomain(tCustomer)));
      },
    );

    test(
      'should return UnexpectedFailure when the Local Data Source returns an unexpected Failure',
      () async {
        // arrange
        when(mockLocalDataSource.save(any)).thenAnswer((_) async =>
            const Left(DataSourceFailure.insufficientPermissions()));
        // act
        final result = await customerRepository.create(tCustomer);
        // assert
        expect(
          result,
          left(const CustomerRepositoryFailure.unexpectedFailure()),
        );
        verify(mockLocalDataSource.save(CustomerDTO.fromDomain(tCustomer)));
      },
    );

    test(
      'should return InvalidElement when the Local Data Source returns an NullElement Failure',
      () async {
        // arrange
        when(mockLocalDataSource.save(any)).thenAnswer(
            (_) async => const Left(DataSourceFailure.nullElement()));
        // act
        final result = await customerRepository.create(null);
        // assert
        expect(
          result,
          left(const CustomerRepositoryFailure.invalidElement()),
        );
        verify(mockLocalDataSource.save(CustomerDTO.fromDomain(null)));
      },
    );
  });
}
