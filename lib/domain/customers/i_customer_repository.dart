import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/failures/customer_repository_failure.dart';

/// Specifies a contract for a repository that handles Customers
abstract class ICustomerRespository {
  /// Returns a stream with a list of the available customers for the user
  Stream<Either<CustomerRepositoryFailure, List<Customer>>> get customersStream;

  /// Creates a customer at the server
  Future<Either<CustomerRepositoryFailure, Unit>> create(Customer customer);
}
