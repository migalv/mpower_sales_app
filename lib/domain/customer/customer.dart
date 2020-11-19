import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/core/commercial_entities/i_company.dart';
import 'package:sales_app/domain/core/commercial_entities/i_particular.dart';
import 'package:sales_app/domain/core/phone_number/phone_number.dart';
import 'package:sales_app/domain/core/unique_id.dart';

part 'customer.freezed.dart';

@freezed
abstract class Customer with _$Customer {
  const Customer._();

  @Implements(IParticular)
  factory Customer.particular({
    @required UniqueId uid,
    @required String name,
    @required String lastName,
    @required PhoneNumber phoneNumber,
    @required DateTime birthDate,
  }) = Particular;

  @Implements(ICompany)
  factory Customer.company({
    @required UniqueId uid,
    @required String name,
    @required PhoneNumber phoneNumber,
  }) = Company;
}
