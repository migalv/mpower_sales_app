import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sales_app/infrastructure/customers/customer_upload_service.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';

import '../../fixtures/fixture_reader.dart';
import '../core/mock_firebase_functions.dart';

void main() {
  MockFirebaseFunctions mockFirebaseFunctions;
  CustomerUploadService uploadService;

  final customersJson =
      jsonFixtureAsMap('customers/customers.json')["customers"]
          as Map<String, dynamic>;

  final customersMap = customersJson.map((id, json) =>
      MapEntry(id, CustomerDTO.fromLocalDataSource(id: id, json: json)));

  setUp(() {
    mockFirebaseFunctions = MockFirebaseFunctions();
    uploadService = CustomerUploadService(mockFirebaseFunctions);
  });

  group('upload', () {
    test(
      'should upload the customers using FirebaseFunctions',
      () async {
        // arrange
        when(mockFirebaseFunctions.createCustomer.call(any))
            .thenAnswer((_) async => HttpsCallableResultMock({"error": null}));
        // act
        final result = await uploadService.upload(customersMap.values.toList());
        // assert
        expect(result, const Right(unit));
      },
    );
  }, skip: true);
}
