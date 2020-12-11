import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';

part 'customer_repository_failure.freezed.dart';

@freezed
abstract class CustomerRepositoryFailure
    implements _$CustomerRepositoryFailure {
  const CustomerRepositoryFailure._();

  /// Failure when an unexpected exception is thrown in the CustomerRepository
  const factory CustomerRepositoryFailure.unexpectedException({
    @required Exception exception,
    @required StackTrace stackTrace,
  }) = UnexpectedException;

  /// Failure when trying to access data without permission
  const factory CustomerRepositoryFailure.insufficientPermissions() =
      InsufficientPermissions;

  /// Failure when an unexpected failure is recieved
  const factory CustomerRepositoryFailure.unexpectedFailure(
      {DataSourceFailure failure}) = UnexpectedFailure;

  /// Failure when an invalid element is passed to the create function
  const factory CustomerRepositoryFailure.invalidElement() = InvalidElement;

  /// Returns a list with the default error messages for each failure
  List<String> get defaultErrorMessages {
    return map(
      unexpectedException: (failure) => [
        "UnexpectedException Failure occured",
        "Exception: ${failure.exception}",
        "StackTrace: ${failure.stackTrace}",
      ],
      insufficientPermissions: (failure) => [
        "InsufficientPermissions Failure occured",
        "Check for permissions",
      ],
      unexpectedFailure: (failure) =>
          ["UnexpectedFailure Failure occured", "$failure"],
      invalidElement: (failure) => ["InvalidElement Failure occured"],
    );
  }
}
