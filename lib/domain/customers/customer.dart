import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/customers/personal_id/personal_id.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';

part 'customer.freezed.dart';

@freezed

/// A registered customer for an order
abstract class Customer implements _$Customer {
  Customer._();

  /// Creates a customer that is a real person
  factory Customer.person({
    /// The unique identifier for the entity (mainly used for databases)
    @required String id,

    /// The name of the customer
    @required String name,

    /// The last name of the customer
    @required String lastName,

    /// The phone number of the customer
    @required PhoneNumber phoneNumber,

    /// The birth date of the persona
    DateTime birthDate,

    /// An unique identifier of the person. Commonly: DNI, NRC, NIF, etc.
    PersonalId personalId,
  }) = Person;

  /// Creates a customer that is a company (society/business)
  factory Customer.company({
    @required String id,
    @required String name,
    @required String phoneNumber,
  }) = Company;

  /// The type of customer. See [CustomerType] for more info
  int get type {
    return map(
      person: (p) => CustomerType.person.index,
      company: (c) => CustomerType.company.index,
    );
  }
}

/// Defines the customer type
enum CustomerType {
  /// index = 0 -- It's a real person
  person,

  /// index = 1 -- It's a company/society
  company,
}
