import 'package:cloud_functions/cloud_functions.dart';

extension FirebaseFunctionHelpers on FirebaseFunctions {
  /// Function name of the Firebase Function that creates a customer
  static const String createCustomerFirebaseFunctionName =
      'customer-createCustomer';
  HttpsCallable get createCustomer =>
      httpsCallable(createCustomerFirebaseFunctionName);
}
