import 'package:sales_app/domain/core/phone_number/phone_number.dart';
import 'package:sales_app/domain/core/unique_id.dart';

/// Interface represents any Commertial Entity (Person, Company, Government, ...)
abstract class ICommercialEntity {
  /// Unique identifier that represents the commercial entity
  UniqueId get uid;

  /// The name of the commercial entity
  String get name;

  /// The phone number of the commercial entity
  PhoneNumber get phoneNumber;
}
