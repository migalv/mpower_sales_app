import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';
import 'package:sales_app/domain/core/data_sources/i_data_source.dart';
import 'package:sales_app/domain/core/data_sources/i_local_data_source.dart';
import 'package:sales_app/domain/core/services/i_upload_service.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/customers/failures/customer_repository_failure.dart';
import 'package:sales_app/domain/customers/i_customer_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sales_app/domain/teams/team.dart';
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
  // ignore: prefer_final_fields
  IUploadService _uploadService;

  CustomerRepository({
    @required ILocalDataSource<CustomerDTO> localDataSource,
    @required IDataSource<CustomerDTO> remoteDataSource,
    @required IUploadService<CustomerDTO> uploadService,
  })  : assert(localDataSource != null &&
            remoteDataSource != null &&
            uploadService != null),
        _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _uploadService = uploadService;

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
          (failure) => _mapDataSourceFailure(failure),
          id,
        );

        // If the Remote Data Source had a failure we return it
        if (fromRemote is CustomerRepositoryFailure) return Left(fromRemote);

        final fromLocal = local.fold(
          (failure) => _mapDataSourceFailure(failure),
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
  Future<Either<CustomerRepositoryFailure, Unit>> create({
    @required Customer customer,
    @required Team forTeam,
  }) async {
    if (customer == null || forTeam == null) {
      return const Left(CustomerRepositoryFailure.invalidElement());
    }
    try {
      final CustomerDTO dto =
          CustomerDTO.create(customer: customer, forTeam: forTeam);
      final result = await _localDataSource.save(dto);

      return result.fold(
        (failure) => Left(_mapDataSourceFailure(failure)),
        (r) => Right(r),
      );
    } on Exception catch (e, s) {
      final failure = CustomerRepositoryFailure.unexpectedException(
        exception: e,
        stackTrace: s,
      );
      return Left(failure);
    }
  }

  /// Uploads all the customers saved in the Local Data Source
  Future<Either<CustomerRepositoryFailure, Unit>> uploadCustomers() async {
    final result = await _localDataSource.getAll();

    return result.fold(
      // If the local data source returned an error
      (failure) => Left(_mapDataSourceFailure(failure)),
      (localCustomers) async {
        // We upload the local customers
        final response =
            await _uploadService.upload(localCustomers.values.toList());

        return response.fold((failure) {
          return failure.when(
              // If the upload failed
              uploadFailed: (uploadedCustomers, errorMessage) async {
            // We remove only the uploaded customers
            for (final uploadedCustomer in uploadedCustomers) {
              await _localDataSource.removeWithId(uploadedCustomer.id);
            }
            return Left(CustomerRepositoryFailure.uploadFailure(
                errorMessage: errorMessage));
          }, uploadTimedout: (uploadedCustomers) async {
            // We remove only the uploaded customers
            for (final uploadedCustomer in uploadedCustomers) {
              await _localDataSource.removeWithId(uploadedCustomer.id);
            }
            return const Left(CustomerRepositoryFailure.uploadFailure());
          });
        }, (r) async {
          await _localDataSource.clear();
          return const Right(unit);
        });
      },
    );
  }
}

CustomerRepositoryFailure _mapDataSourceFailure(
  DataSourceFailure dataSourceFailure,
) {
  return dataSourceFailure.maybeWhen(
    insufficientPermissions: () {
      return const CustomerRepositoryFailure.insufficientPermissions();
    },
    nullElement: () {
      return const CustomerRepositoryFailure.invalidElement();
    },
    orElse: () {
      return CustomerRepositoryFailure.unexpectedFailure(
        failure: dataSourceFailure,
      );
    },
  );
}
