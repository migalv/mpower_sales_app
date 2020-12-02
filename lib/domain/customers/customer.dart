import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/customers/personal_id/personal_id.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';
import 'package:sales_app/domain/i_entity.dart';

part 'customer.freezed.dart';

@freezed

/// A registered customer for an order
abstract class Customer implements _$Customer, IEntity {
  const Customer._();

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

    /// Timestamp that represents the last time this entity was updated
    @required int updatedAt,

    /// The birth date of the persona
    DateTime birthDate,

    /// The contact email of the person
    String email,

    /// An unique identifier of the person. Commonly: DNI, NRC, NIF, etc.
    PersonalId personalId,
  }) = Person;

  /// Creates a customer that is a company (society/business)
  factory Customer.company({
    @required String id,
    @required String name,
    @required PhoneNumber phoneNumber,
    @required int updatedAt,
  }) = Company;

  /// The type of customer. See [CustomerType] for more info
  int get type {
    return map(
      person: (p) => CustomerType.person.index,
      company: (c) => CustomerType.company.index,
    );
  }

  @override
  List<Object> get props => [id];

  @override
  bool get stringify => false;
}

/// Defines the customer type
enum CustomerType {
  /// index = 0 -- It's a real person
  @JsonValue(0)
  person,

  /// index = 1 -- It's a company/society
  @JsonValue(1)
  company,
}
