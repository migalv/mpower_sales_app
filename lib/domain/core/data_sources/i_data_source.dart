import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';

/// Contract for any Data Source (Like SharedPreferencies, Firestore, MongoDB, ...)
abstract class IDataSource<T> {
  /// Fetches from the data source all the available elements
  Future<Either<DataSourceFailure, List<T>>> getAll();

  /// Fetches from the data source the element that matches the given id
  Future<Either<DataSourceFailure, T>> getElementWithId(String id);

  /// Watches, using streams all the available elements
  Stream<List<T>> watchAll();

  /// Saves a given element in the Data Source
  Future<Either<DataSourceFailure, Unit>> save(T element);

  /// Removes an element from the Data Source that matches the given id
  ///
  /// The element is then returned by the function
  Future<Either<DataSourceFailure, T>> removeWithId(String id);
}
