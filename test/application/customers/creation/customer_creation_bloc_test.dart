import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sales_app/application/customers/creation/customer_creation_bloc.dart';
import 'package:sales_app/domain/core/data_sources/cached_remote_data_source_failure.dart';
import 'package:sales_app/domain/core/data_sources/i_cached_remote_data_source.dart';
import 'package:sales_app/domain/core/language_label.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/failures/customer_repository_failure.dart';
import 'package:sales_app/domain/customers/i_customer_repository.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';
import 'package:sales_app/domain/markets/market.dart';
import 'package:sales_app/domain/settings/document_type.dart';
import 'package:sales_app/domain/settings/i_settings_repository.dart';
import 'package:sales_app/domain/settings/settings_repository_failure.dart';

class MockCustomerRepository extends Mock implements ICustomerRepository {}

class MockMarketRemoteDataSource extends Mock
    implements ICachedRemoteDataSource<Market> {}

class MockSettingRepository extends Mock implements ISettingRepository {}

void main() {
  CustomerCreationBloc bloc;
  MockCustomerRepository mockRepository;
  MockMarketRemoteDataSource mockMarketDS;
  MockSettingRepository mockSettingRepository;

  const String tEnteredName = "Test";
  const String tEnteredSurname = "Surname";
  const String tEnteredCode = "+256";
  const String tEnteredPhoneNumber = "123 45 67 89";
  final Customer tCustomer = Customer.person(
    name: "Test",
    surname: "Surname",
    phoneNumber: const PhoneNumber(code: "256", number: "123456789"),
  );

  const Market tMarket = Market(
    id: "id1",
    iso: "ESP",
    name: "Spain",
    currency: "EUR",
    paymentMethods: [1, 2, 3],
    documentMethods: ["dni"],
  );

  const DocumentType tDocumentType = DocumentType(
    key: "dni",
    languageLabel: LanguageLabel(
      en: "NDI",
      es: "DNI",
    ),
    isRequired: true,
  );

  setUp(() async {
    mockMarketDS = MockMarketRemoteDataSource();
    mockSettingRepository = MockSettingRepository();
    mockRepository = MockCustomerRepository();
    bloc = CustomerCreationBloc(
      mockRepository,
      mockMarketDS,
      mockSettingRepository,
    );
  });

  group('CustomerCreationBloc', () {
    test('should initialize with the load in progress state', () {
      expectLater(bloc.state, const CustomerCreationState.loadInProgress());
    });

    blocTest(
      'should load the required data to build the initial step of the form',
      build: () {
        when(mockMarketDS.get()).thenAnswer((_) async => const Right(tMarket));

        when(mockSettingRepository.getDocumentTypeFor(
          market: anyNamed("market"),
        )).thenAnswer((_) => const Right([tDocumentType]));

        return bloc;
      },
      act: (bloc) => bloc.add(
        const CustomerCreationEvent.loadRequested(),
      ),
      expect: const [
        CustomerCreationState.loadInProgress(),
        CustomerCreationState.initialStep(documentTypes: [tDocumentType]),
      ],
      verify: (bloc) {
        verify(mockMarketDS.get()).called(1);
        verify(mockSettingRepository.getDocumentTypeFor(market: tMarket))
            .called(1);
      },
    );

    blocTest(
      'should emit loadFailed when the market data source returns a failure',
      build: () {
        when(mockMarketDS.get()).thenAnswer((_) async {
          return const Left(CachedRemoteDataSourceFailure.elementNotFound());
        });
        return bloc;
      },
      act: (bloc) => bloc.add(
        const CustomerCreationEvent.loadRequested(),
      ),
      expect: [
        const CustomerCreationState.loadInProgress(),
        CustomerCreationState.loadFailed(
          errorMessages: const CachedRemoteDataSourceFailure.elementNotFound()
              .defaultErrorMessages,
        ),
      ],
      verify: (bloc) {
        verify(mockMarketDS.get()).called(1);
      },
    );

    blocTest(
      'should emit loadFailed when the settings repository returns a failure',
      build: () {
        when(mockMarketDS.get()).thenAnswer((_) async => const Right(tMarket));

        when(mockSettingRepository.getDocumentTypeFor(
          market: anyNamed("market"),
        )).thenAnswer((_) {
          return const Left(SettingsRepositoryFailure.uninitializedSettings());
        });

        return bloc;
      },
      act: (bloc) => bloc.add(
        const CustomerCreationEvent.loadRequested(),
      ),
      expect: [
        const CustomerCreationState.loadInProgress(),
        CustomerCreationState.loadFailed(
          errorMessages: const SettingsRepositoryFailure.uninitializedSettings()
              .defaultErrorMessages,
        ),
      ],
      verify: (bloc) {
        verify(mockMarketDS.get()).called(1);
        verify(mockSettingRepository.getDocumentTypeFor(market: tMarket))
            .called(1);
      },
    );

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
        return bloc..documentTypes = [tDocumentType];
      },
      act: (bloc) => bloc.add(
        const CustomerCreationEvent.saveButtonPressed(
          customerName: tEnteredName,
          customerSurname: tEnteredSurname,
          countryCode: tEnteredCode,
          phoneNumber: tEnteredPhoneNumber,
        ),
      ),
      expect: [
        const CustomerCreationState.creationInProgress(),
        const CustomerCreationState.creationFailure(
          failure: CustomerRepositoryFailure.insufficientPermissions(),
        ),
        const CustomerCreationState.initialStep(documentTypes: [tDocumentType]),
      ],
      verify: (bloc) => verify(mockRepository.create(tCustomer)).called(1),
    );
  });
}
