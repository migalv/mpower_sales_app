import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';
import 'package:sales_app/domain/core/data_sources/i_data_source.dart';
import 'package:sales_app/domain/core/data_sources/i_local_data_source.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/customers/failures/customer_repository_failure.dart';
import 'package:sales_app/domain/customers/i_customer_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sales_app/infrastructure/customers/customer_data_merger.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';

@LazySingleton(as: ICustomerRepository)

/// Repository that has 2 data sources: Local & Remote for handling customers
///
/// It merges the data sources using the [CustomerDataMerger]
class CustomerRepository implements ICustomerRepository {
  // ignore: prefer_final_fields
  ILocalDataSource<CustomerDTO> _localDataSource;
  // ignore: prefer_final_fields
  IDataSource<CustomerDTO> _remoteDataSource;

  CustomerRepository({
    @required ILocalDataSource<CustomerDTO> localDataSource,
    @required IDataSource<CustomerDTO> remoteDataSource,
  })  : assert(localDataSource != null && remoteDataSource != null),
        _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Stream<Either<CustomerRepositoryFailure, List<Customer>>>
      get customersStream {
    final remoteStream = _remoteDataSource.watchAll();
    final localStream = _localDataSource.watchAll();

    final mergedStream = CombineLatestStream.combine2<
        Either<DataSourceFailure, Map<String, CustomerDTO>>,
        Either<DataSourceFailure, Map<String, CustomerDTO>>,
        Either<CustomerRepositoryFailure, List<Customer>>>(
      remoteStream,
      localStream,
      (remote, local) {
        final fromRemote = remote.fold(
          _mapDataSourceFailure,
          id,
        );

        // If the Remote Data Source had a failure we return it
        if (fromRemote is CustomerRepositoryFailure) return Left(fromRemote);

        final fromLocal = local.fold(
          _mapDataSourceFailure,
          id,
        );

        // If the Local Data Source had a failure we return it
        if (fromLocal is CustomerRepositoryFailure) return Left(fromLocal);

        // If everything went fine then we merge the Local & Remote sources
        Set<Customer> customers = {};

        // This if is mainly for smart cast purposes
        if (fromRemote is Map<String, CustomerDTO> &&
            fromLocal is Map<String, CustomerDTO>) {
          customers =
              CustomerDataMerger(remoteData: fromRemote, localData: fromLocal)
                  .merge();
        }

        return Right(customers.toList());
      },
    );

    return mergedStream;
  }

  @override

  /// Saves the customer in the Local Data Source
  Future<Either<CustomerRepositoryFailure, Unit>> create(
    Customer customer,
  ) async {
    try {
      final CustomerDTO dto = CustomerDTO.fromDomain(customer);
      final result = await _localDataSource.save(dto);

      return result.fold(
        (failure) => Left(_mapDataSourceFailure(failure)),
        (r) => Right(r),
      );
    } on Exception catch (e, s) {
      final failure = CustomerRepositoryFailure.unexpectedException(
          exception: e, stackTrace: s);
      return Left(failure);
    }
  }

  /// Uploads all the customers in the Local Data Source
  // Future<Either<CustomerRepositoryFailure, Unit>> uploadCustomers() {
  //   // TODO: implement create
  //   throw UnimplementedError();
  // }

  /// Maps the given DataSource Failure to a CustomerRepository Failure
  CustomerRepositoryFailure _mapDataSourceFailure(
    DataSourceFailure dataSourceFailure,
  ) {
    return dataSourceFailure.when(
      insufficientPermissions: () {
        return const CustomerRepositoryFailure.insufficientPermissions();
      },
      nullElement: () {
        return const CustomerRepositoryFailure.invalidElement();
      },
      elementNotFound: () {
        return CustomerRepositoryFailure.unexpectedFailure(
          failure: dataSourceFailure,
        );
      },
      noElementsFor: (collection) {
        return CustomerRepositoryFailure.unexpectedFailure(
          failure: dataSourceFailure,
        );
      },
      serverError: (error) {
        return CustomerRepositoryFailure.unexpectedFailure(
          failure: dataSourceFailure,
        );
      },
      unexpectedException: (e, s) {
        return CustomerRepositoryFailure.unexpectedException(
          exception: e,
          stackTrace: s,
        );
      },
    );
  }
}
