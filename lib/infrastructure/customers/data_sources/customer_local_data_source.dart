import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/core/data_sources/i_data_source.dart';
import 'package:sales_app/domain/core/failures/failure/failure.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomerLocalDataSource implements IDataSource<Customer> {
  SharedPreferences _dataSource;

  /// Data source that uses SharedPreferences to store customers locally
  CustomerLocalDataSource(this._dataSource);

  @override
  Future<Either<Failure, Set<Customer>>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<Customer>>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> remove(Customer element) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeWithId(String id) {
    // TODO: implement removeWithId
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> save(Customer element) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
