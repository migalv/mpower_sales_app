import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/core/repository_failure/repository_failure.dart';
import 'package:sales_app/domain/customers/customer.dart';

/// Specifies a contract for a repository that handles Customers
abstract class ICustomerRepository {
  /// Creates an customer at the server
  Future<Either<RepositoryFailure, Unit>> create(Customer customer);
}
