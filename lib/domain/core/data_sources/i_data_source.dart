import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';

/// Contract for any Data Source (Like SharedPreferencies, Firestore, MongoDB, ...)
abstract class IDataSource<IEntity> {
  /// Fetches from the data source all the available elements
  Future<Either<DataSourceFailure, Map<String, IEntity>>> getAll();

  /// Fetches from the data source the element that matches the given id
  Future<Either<DataSourceFailure, IEntity>> getElementWithId(String id);

  /// Watches, using streams all the available elements
  Stream<Either<DataSourceFailure, Map<String, IEntity>>> watchAll();
}
