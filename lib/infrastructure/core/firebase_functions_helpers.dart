import 'package:cloud_functions/cloud_functions.dart';

/// Helper extension to locate all the http calls to cloud functions
extension FirebaseFunctionsX on FirebaseFunctions {
  /// Calls the Firebase Cloud Function for creating an order
  HttpsCallable get createOrder => httpsCallable('create_order');

  /// Calls the Firebase Cloud Function for creating a customer
  HttpsCallable get createCustomer => httpsCallable('customer-createCustomer');
}
