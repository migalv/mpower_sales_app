import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sales_app/application/customers/creation/customer_creation_bloc.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/failures/customer_repository_failure.dart';
import 'package:sales_app/domain/customers/i_customer_repository.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';

class MockCustomerRepository extends Mock implements ICustomerRepository {}

void main() {
  CustomerCreationBloc bloc;
  MockCustomerRepository mockRepository;
  const String tEnteredName = "Test";
  const String tEnteredSurname = "Surname";
  const String tEnteredCode = "+256";
  const String tEnteredPhoneNumber = "123 45 67 89";
  final Customer tCustomer = Customer.person(
    name: "Test",
    surname: "Surname",
    phoneNumber: const PhoneNumber(code: "256", number: "123456789"),
  );

  setUp(() {
    mockRepository = MockCustomerRepository();
    bloc = CustomerCreationBloc(mockRepository);
  });

  group('CustomerCreationBloc', () {
    test('should initialize with the initial state', () {
      expectLater(bloc.state, const CustomerCreationState.initialStep());
    });

    blocTest(
      'should successfully create a customer in the repository when user requests it',
      build: () {
        when(mockRepository.create(any))
            .thenAnswer((_) async => const Right(unit));
        return bloc;
      },
      act: (bloc) => bloc.add(
        const CustomerCreationEvent.saveButtonPressed(
          customerName: tEnteredName,
          customerSurname: tEnteredSurname,
          countryCode: tEnteredCode,
          phoneNumber: tEnteredPhoneNumber,
        ),
      ),
      expect: const [
        CustomerCreationState.creationInProgress(),
        CustomerCreationState.creationSuccess(),
      ],
      verify: (bloc) => verify(mockRepository.create(tCustomer)).called(1),
    );

    blocTest(
      'should emit CreationFailure state when the customer repository returns a failure',
      build: () {
        when(mockRepository.create(any)).thenAnswer((_) async =>
            const Left(CustomerRepositoryFailure.insufficientPermissions()));
        return bloc;
      },
      act: (bloc) => bloc.add(
        const CustomerCreationEvent.saveButtonPressed(
          customerName: tEnteredName,
          customerSurname: tEnteredSurname,
          countryCode: tEnteredCode,
          phoneNumber: tEnteredPhoneNumber,
        ),
      ),
      expect: const [
        CustomerCreationState.creationInProgress(),
        CustomerCreationState.creationFailure(
          failure: CustomerRepositoryFailure.insufficientPermissions(),
        ),
      ],
      verify: (bloc) => verify(mockRepository.create(tCustomer)).called(1),
    );
  });
}
