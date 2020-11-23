import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/core/i_db_entity.dart';
import 'package:sales_app/domain/customers/particular_id/particular_id.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';
import 'package:sales_app/domain/teams/team.dart';

part 'customer.freezed.dart';

@freezed

/// A registered customer for an order
abstract class Customer implements _$Customer, IDBEntity {
  Customer._();

  /// Creates a customer that is a particular (real person)
  factory Customer.particular({
    @required String id,

    /// The team this customer belongs to
    @required Team team,

    /// The name of the customer
    @required String name,

    /// The last name of the customer
    @required String lastName,

    /// The phone number of the customer
    @required PhoneNumber phoneNumber,

    /// The birth date of the persona
    DateTime birthDate,

    /// An unique identifier of the persona. Commonly: DNI, NRC, NIF, etc.
    ParticularId particularId,
  }) = Particular;

  /// Creates a customer that is a company (society/business)
  factory Customer.company({
    @required String id,
    @required String name,
    @required PhoneNumber phoneNumber,
    @required Team team,
  }) = Company;

  int get type => this is Particular ? 0 : 1;
}
