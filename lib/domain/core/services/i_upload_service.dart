import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:sales_app/domain/i_entity.dart';

part 'i_upload_service.freezed.dart';

/// Service responsible for uploading entities to a remote server
abstract class IUploadService<IEntity> {
  /// Uploads the list of entities provided as parameter
  Future<Either<UploadServiceFailure, Unit>> upload(List<IEntity> entities);
}

@freezed
abstract class UploadServiceFailure with _$UploadServiceFailure {
  /// Failure when the upload failed at some point
  ///
  /// It returns entities that were uploaded in the process (before the failure)
  const factory UploadServiceFailure.uploadFailed({
    @required List<IEntity> uploadedEntities,
    String errorMessage,
  }) = UploadFailed;

  const factory UploadServiceFailure.uploadTimedout({
    @required List<IEntity> uploadedEntities,
  }) = UploadTimedout;
}
