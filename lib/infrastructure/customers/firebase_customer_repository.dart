import 'package:cloud_functions/cloud_functions.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/core/repository_failure/repository_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/customers/i_customer_repository.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_firefunc_dto.dart';
import 'package:sales_app/infrastructure/core/firebase_functions_helpers.dart';

class FirebaseCustomerRepository implements ICustomerRepository {
  final FirebaseFunctions fireFunctions;

  FirebaseCustomerRepository(this.fireFunctions);

  @override

  /// Function that creates a Customer in Firestore using Firebase Functions
  Future<Either<RepositoryFailure, Unit>> create(Customer customer) async {
    CustomerFireFuncDTO customerDTO;
    try {
      customerDTO = CustomerFireFuncDTO.fromDomain(customer);
    } catch (e, s) {
      return Left(RepositoryFailure.unknownError(
        exception: e,
        stackTrace: s,
        message: "An unknown error ocurred while transforming a Customer"
            " entity to a Customer DTO in the create function for the Firebase"
            " Customer Repository.",
      ));
    }

    try {
      final HttpsCallableResult<Map<String, dynamic>> result =
          await fireFunctions.createCustomer.call(customerDTO.toJson());

      if (result.data["error"] != null) {
        final String errorMessage = result.data["error"] as String;
        if (errorMessage == "PERMISSIONS_DENIED") {
          return const Left(RepositoryFailure.permissionsDenied());
        } else if (errorMessage == "INCOMPLETE_ARGUMENTS") {
          return const Left(RepositoryFailure.incompleteArguments());
        } else {
          return Left(RepositoryFailure.serverError(message: errorMessage));
        }
      }
    } catch (e, s) {
      return Left(RepositoryFailure.unknownError(
        exception: e,
        stackTrace: s,
        message: "An unknown error ocurred while calling the Firebase Function"
            " to create a customer for the Firebase Customer Repository.",
      ));
    }

    // Everything went fine
    return const Right(unit);
  }
}
