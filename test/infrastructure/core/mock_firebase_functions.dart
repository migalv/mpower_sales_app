import 'package:cloud_functions/cloud_functions.dart';
import 'package:mockito/mockito.dart';
import 'package:sales_app/infrastructure/core/helpers/firebase_functions_helpers.dart';

class MockFirebaseFunctions extends Mock implements FirebaseFunctions {
  @override
  HttpsCallable httpsCallable(String functionName,
      {HttpsCallableOptions options}) {
    return HttpsCallableMock();
  }
}

class HttpsCallableMock extends Mock implements HttpsCallable {}

class HttpsCallableResultMock<T> extends Mock
    implements HttpsCallableResult<T> {
  HttpsCallableResultMock(this.data);

  @override
  final T data;
}

extension MockFirebaseFunctionHelpers on MockFirebaseFunctions {
  HttpsCallable get createCustomer =>
      httpsCallable(FirebaseFunctionHelpers.createCustomerFirebaseFunctionName);
}
