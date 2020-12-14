import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/failures/customer_repository_failure.dart';
import 'package:sales_app/domain/teams/team/team.dart';

/// Specifies a contract for a repository that handles Customers
abstract class ICustomerRepository {
  /// Returns a stream with a list of the available customers for the user
  Stream<Either<CustomerRepositoryFailure, List<Customer>>> get customersStream;

  /// Creates a customer at the server for the given team
  Future<Either<CustomerRepositoryFailure, Unit>> create({
    @required Customer customer,
    @required Team forTeam,
  });
}
