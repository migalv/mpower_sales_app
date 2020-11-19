import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/core/i_db_entity.dart';
import 'package:sales_app/domain/core/phone_number/phone_number.dart';
import 'package:sales_app/domain/core/unique_id.dart';

part 'customer.freezed.dart';

@freezed

/// A registered customer for an order
abstract class Customer with _$Customer implements IDBEntity {
  /// Creates a customer that is a particular (real person)
  factory Customer.particular({
    @required UniqueId uid,

    /// The name of the customer
    String name,

    /// The last name of the customer
    String lastName,

    /// The phone number of the customer
    PhoneNumber phoneNumber,

    /// The birth date of the persona
    DateTime birthDate,

    /// An unique identifier of the persona. Commonly: DNI, NRC, NIF, etc.
    String particularId,
  }) = Particular;

  /// Creates a customer that is a company (society/business)
  factory Customer.company({
    @required UniqueId uid,
    @required String name,
    @required PhoneNumber phoneNumber,

    /// An unique identifier for the company.
    @required String companyUid,
  }) = Company;
}
