import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/core/failures/failure/failure.dart';

/// Contract for any Data Source (Like SharedPreferencies, Firestore, MongoDB, ...)
abstract class IDataSource<T> {
  /// Fetches from the data source all the available elements
  Future<Either<Failure, Set<T>>> getAll();

  /// Watches, using streams all the available elements
  Stream<Either<Failure, Set<T>>> watchAll();

  /// Saves a given element in the Data Source
  Future<Either<Failure, Unit>> save(T element);

  /// Removes a given element from the Data Source
  Future<Either<Failure, Unit>> remove(T element);

  /// Removes an element from the Data Source that matches the given Id
  Future<Either<Failure, Unit>> removeWithId(String id);
}
