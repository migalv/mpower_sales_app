import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';
import 'package:sales_app/domain/teams/team.dart';
import 'package:sales_app/infrastructure/core/firebase_functions_helpers.dart';
import 'package:sales_app/infrastructure/customers/firebase_customer_repository.dart';

// ignore: avoid_implementing_value_types
class MockFirebaseFunctions extends Mock implements FirebaseFunctions {}

void main() {
  MockFirebaseFunctions mockFirebaseFunctions;
  FirebaseCustomerRepository repository;
  final Customer tCustomer = Customer.particular(
    id: "abc",
    team: const Team(id: "cvb", name: "Team"),
    name: "Miguel",
    lastName: "Test",
    phoneNumber: const PhoneNumber(
      code: "34",
      number: "123456789",
    ),
  );

  setUp(() {
    mockFirebaseFunctions = MockFirebaseFunctions();
    repository = FirebaseCustomerRepository(mockFirebaseFunctions);
  });

  group('FirebaseCustomerRepository', () {
    test(
      'should recieve a correct answer from the server when creating customer',
      () async {
        // arrange
        when(mockFirebaseFunctions.createCustomer.call(any))
            .thenAnswer((_) => Future.value());
        // act
        final result = repository.create(tCustomer);
        // assert
        verify(mockFirebaseFunctions.createCustomer.call()).called(1);
        expect(result, const Right(unit));
      },
    );
  });
}
