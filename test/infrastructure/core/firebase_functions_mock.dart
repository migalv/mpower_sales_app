library firebase_cloud_functions_mock;

import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:mockito/mockito.dart';

class MockFirebaseFunctions extends Mock implements FirebaseFunctions {
  final Map<String, String> _jsonStore = <String, String>{};

  String _convertMapToJson(Map<String, dynamic> parameters) {
    return json.encode(parameters);
  }

  void mockResult(
      {String functionName, String json, Map<String, dynamic> parameters}) {
    if (parameters?.isNotEmpty != null) {
      // ignore: parameter_assignments
      functionName = functionName + _convertMapToJson(parameters);
    }
    _jsonStore[functionName] = json;
  }

  String getMockResult(String functionName, Map<String, dynamic> parameters) {
    // ignore: parameter_assignments
    functionName = parameters == null
        ? functionName
        : (parameters?.isNotEmpty != null
            ? functionName + _convertMapToJson(parameters)
            : functionName);
    assert(
        _jsonStore[functionName] != null, 'No mock result for $functionName');
    return _jsonStore[functionName];
  }

  @override
  HttpsCallable getHttpsCallable({String functionName}) {
    return HttpsCallableMock._(this, functionName);
  }
}

class HttpsCallableMock extends Mock implements HttpsCallable {
  HttpsCallableMock._(this._firebaseFunctions, this._functionName);

  final MockFirebaseFunctions _firebaseFunctions;
  final String _functionName;

  @override
  Future<HttpsCallableResult<T>> call<T>([dynamic parameters]) {
    // ignore: unused_local_variable
    final decoded = json.decode(_firebaseFunctions.getMockResult(
        _functionName, parameters as Map<String, dynamic>));
    return Future.value(/*HttpsCallableResultMock._(decoded)*/);
  }

  /// The timeout to use when calling the function. Defaults to 60 seconds.
  Duration timeout;
}

class HttpsCallableResultMock extends Mock implements HttpsCallableResult {
  HttpsCallableResultMock._(this.data);

  /// Returns the data that was returned from the Callable HTTPS trigger.
  @override
  final dynamic data;
}
