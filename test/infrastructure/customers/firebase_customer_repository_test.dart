import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';
import 'package:sales_app/domain/teams/team.dart';
import 'package:sales_app/infrastructure/customers/firebase_customer_repository.dart';
import 'package:sales_app/infrastructure/core/firestore_helpers.dart';

// ignore: avoid_implementing_value_types
class MockFirebaseFunctions extends Mock implements FirebaseFunctions {}

// ignore: avoid_implementing_value_types
class MockFirestore extends Mock implements FirebaseFirestore {}

void main() {
  MockFirebaseFunctions mockFirebaseFunctions;
  MockFirestore mockFirestore;
  FirebaseCustomerRepository repository;

  // ignore: unused_local_variable
  Customer tCustomer;

  setUp(() {
    mockFirebaseFunctions = MockFirebaseFunctions();
    repository =
        FirebaseCustomerRepository(mockFirebaseFunctions, mockFirestore);
    tCustomer = Customer.particular(
      id: "abc",
      name: "Miguel",
      lastName: "Test",
      team: const Team(id: "team_id", name: "Test team"),
      phoneNumber: const PhoneNumber(
        code: "34",
        number: "123456789",
      ),
    );
  });

  // Commented until we can mock the Firebase Functions package
  // test(
  //   'should recieve a correct answer from the server when creating customer',
  //   () async {
  //     // arrange
  //     when(mockFirebaseFunctions.createCustomer.call(any))
  //         .thenAnswer((_) => Future.value());
  //     // act
  //     final result = repository.create(tCustomer);
  //     // assert
  //     verify(mockFirebaseFunctions.createCustomer.call()).called(1);
  //     expect(result, const Right(unit));
  //   },
  // );

  group('watchAll', () {
    test(
      'should correctly listen the "customers" collection',
      () async {
        // arrange
        when(mockFirestore.customersCollection.snapshots());
        // act
        final result = repository.watchAll();
        // assert
        expectLater(result, emits(isA<List<Customer>>()));
      },
    );
  });
}
