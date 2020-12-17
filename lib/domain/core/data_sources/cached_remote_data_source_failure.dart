import 'package:freezed_annotation/freezed_annotation.dart';

part 'cached_remote_data_source_failure.freezed.dart';

@freezed
abstract class CachedRemoteDataSourceFailure
    implements _$CachedRemoteDataSourceFailure {
  const CachedRemoteDataSourceFailure._();

  /// Failure when an unexpected exception is thrown
  const factory CachedRemoteDataSourceFailure.unexpectedException({
    @required Exception exception,
    @required StackTrace stackTrace,
  }) = UnexpectedException;

  /// Failure when the element is not present in the datasource
  const factory CachedRemoteDataSourceFailure.elementNotFound() =
      ElementNotFound;
  const factory CachedRemoteDataSourceFailure.serverError({
    dynamic error,
  }) = ServerError;

  /// Failure when trying to access data without the required permissions
  const factory CachedRemoteDataSourceFailure.insufficientPermissions() =
      InsufficientPermissions;

  /// Returns a list with the default error messages for each failure
  List<String> get defaultErrorMessages {
    return map(
      unexpectedException: (failure) => [
        "$failure occured",
        "Exception: ${failure.exception}",
        "StackTrace: ${failure.stackTrace}",
      ],
      insufficientPermissions: (failure) => [
        "$failure occured",
        "Check for permissions",
      ],
      elementNotFound: (failure) => [
        "$failure occurred",
        "Are looking for something that doesn't exists?"
      ],
      serverError: (failure) => ["$failure ocurred"],
    );
  }
}
