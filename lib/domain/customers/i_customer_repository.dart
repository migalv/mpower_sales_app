import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/core/failures/failure/failure.dart';
import 'package:sales_app/domain/customers/customer.dart';

/// Specifies a contract for a repository that handles Customers
abstract class ICustomerRespository {
  /// Returns a stream with a list of the available customers for the user
  Stream<Either<Failure, List<Customer>>> get customersStream;

  /// Creates a customer at the server
  Future<Either<Failure, Unit>> create(Customer customer);
}
