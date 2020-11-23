import 'package:dartz/dartz.dart' hide Order;
import 'package:sales_app/domain/core/repository_failure/repository_failure.dart';
import 'package:sales_app/domain/orders/order.dart';

/// Specifies a contract for a repository that handles Orders
abstract class IOrderRepository {
  /// Returns a stream with a list of all available orders
  Stream<Either<RepositoryFailure, List<Order>>> watch();

  /// Creates an order at the server
  Future<Either<RepositoryFailure, Unit>> create(Order order);

  /// Updates an order at the server
  Future<Either<RepositoryFailure, Unit>> update(Order order);
}
