import 'package:meta/meta.dart';
import 'package:sales_app/domain/core/data_sources/i_data_source.dart';
import 'package:sales_app/domain/core/failures/failure/failure.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/customers/i_customer_repository.dart';

/// Repository that has 2 data sources: Local & Remote for handling customers
///
/// It merges the data sources prioritizing the online data
class CustomerRepository implements ICustomerRespository {
  IDataSource _localDataSource;
  IDataSource _remoteDataSource;

  CustomerRepository({
    @required IDataSource localDataSource,
    @required IDataSource remoteDataSource,
  })  : assert(localDataSource != null && remoteDataSource != null),
        _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Stream<Either<Failure, List<Customer>>> get customersStream =>
      throw UnimplementedError();
  // TODO: implement customersStream

  @override

  /// Saves the customer in the Local Data Source
  Future<Either<Failure, Unit>> create(Customer customer) {
    // TODO: implement create
    throw UnimplementedError();
  }

  /// Uploads all the customers in the Local Data Source
  Future<Either<Failure, Unit>> uploadCustomers() {
    // TODO: implement create
    throw UnimplementedError();
  }
}
