import 'dart:async';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_app/domain/core/services/i_upload_service.dart';
import 'package:sales_app/infrastructure/customers/customer_payload/customer_payload.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';
import 'package:sales_app/infrastructure/core/helpers/firebase_functions_helpers.dart';

@LazySingleton(as: IUploadService)
class CustomerUploadService implements IUploadService<CustomerDTO> {
  final FirebaseFunctions _firebaseFunctions;

  /// The timeout for the Firebase function calls
  final Duration timeout = const Duration(seconds: 10);

  CustomerUploadService(this._firebaseFunctions);

  @override
  Future<Either<UploadServiceFailure, Unit>> upload(
    List<CustomerDTO> dtos,
  ) async {
    final List<CustomerDTO> uploadedDTOs = [];

    for (final dto in dtos) {
      try {
        final CustomerPayload payload = CustomerPayload.fromDTO(dto);
        final HttpsCallableResult result = await _firebaseFunctions
            .createCustomer
            .call(payload.toJson())
            .timeout(timeout);

        // An error ocurred
        if (result.data["error"] != null) {
          return Left(UploadServiceFailure.uploadFailed(
            uploadedEntities: uploadedDTOs,
            errorMessage: result.data["error"].toString(),
          ));
        } else {
          uploadedDTOs.add(dto);
        }
      } on TimeoutException {
        final failure =
            UploadServiceFailure.uploadTimedout(uploadedEntities: uploadedDTOs);
        return Left(failure);
      }
    }

    return const Right(unit);
  }
}
