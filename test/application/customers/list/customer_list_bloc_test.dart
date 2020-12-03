import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sales_app/application/customers/list/customer_list_bloc.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/failures/customer_repository_failure.dart';
import 'package:sales_app/domain/customers/i_customer_repository.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';

import '../../../fixtures/fixture_reader.dart';

class MockCustomerRepository extends Mock implements ICustomerRepository {}

void main() {
  MockCustomerRepository mockCustomerRepository;
  CustomerListBloc customerListBloc;

  setUp(() {
    mockCustomerRepository = MockCustomerRepository();
    customerListBloc = CustomerListBloc(mockCustomerRepository);
  });

  group('CustomerListBloc', () {
    final Map<String, dynamic> customerJson =
        jsonFixtureAsMap('customers/customers.json')["customers"]
            as Map<String, dynamic>;

    final List<Customer> tCustomers = customerJson
        .map((id, json) => MapEntry(
            id, CustomerDTO.fromLocalDataSource(id: id, json: json).toDomain()))
        .values
        .toList();

    test('should initialize with the initial state', () {
      expectLater(customerListBloc.state, const CustomerListState.initial());
    });

    blocTest(
      'should emit the List of Customers when Load Started Event is added',
      build: () {
        when(mockCustomerRepository.customersStream)
            .thenAnswer((_) => Stream.fromIterable([Right(tCustomers)]));
        return customerListBloc;
      },
      act: (bloc) => bloc.add(const CustomerListEvent.loadStarted()),
      expect: [
        const CustomerListState.loadInProgress(),
        CustomerListState.loadSuccess(tCustomers),
      ],
      verify: (bloc) =>
          verify(mockCustomerRepository.customersStream).called(1),
    );

    blocTest(
      'should emit the Failure State when a Failure is recieved in the BLoC',
      build: () {
        when(mockCustomerRepository.customersStream).thenAnswer(
          (_) => Stream.fromIterable(
            [const Left(CustomerRepositoryFailure.unexpectedFailure())],
          ),
        );
        return customerListBloc;
      },
      act: (bloc) => bloc.add(const CustomerListEvent.loadStarted()),
      expect: const [
        CustomerListState.loadInProgress(),
        CustomerListState.loadFailure(
          CustomerRepositoryFailure.unexpectedFailure(),
        ),
      ],
      verify: (bloc) =>
          verify(mockCustomerRepository.customersStream).called(1),
    );

    blocTest(
      'should emit the updated list of Customer every time the customersStream emits a list',
      build: () {
        when(mockCustomerRepository.customersStream).thenAnswer(
          (_) => Stream.fromIterable(
            [const Right([]), Right(tCustomers), const Right([])],
          ),
        );
        return customerListBloc;
      },
      act: (bloc) => bloc.add(const CustomerListEvent.loadStarted()),
      expect: [
        const CustomerListState.loadInProgress(),
        const CustomerListState.loadSuccess([]),
        CustomerListState.loadSuccess(tCustomers),
        const CustomerListState.loadSuccess([]),
      ],
      verify: (bloc) =>
          verify(mockCustomerRepository.customersStream).called(1),
    );
  });
}
