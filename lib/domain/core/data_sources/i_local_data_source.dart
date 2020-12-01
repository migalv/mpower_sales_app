import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';
import 'package:sales_app/domain/core/data_sources/i_data_source.dart';

abstract class ILocalDataSource<IEntity> extends IDataSource<IEntity> {
  /// Saves a given element in the Data Source
  Future<Either<DataSourceFailure, Unit>> save(IEntity element);

  /// Removes an element from the Data Source that matches the given id
  ///
  /// The element is then returned by the function
  Future<Either<DataSourceFailure, IEntity>> removeWithId(String id);

  /// Will remove all instances saved in this Data Source
  Future<Either<DataSourceFailure, Unit>> clear();
}
