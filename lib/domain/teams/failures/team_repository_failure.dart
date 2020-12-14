import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_repository_failure.freezed.dart';

@freezed
abstract class TeamRepositoryFailure implements _$TeamRepositoryFailure {
  const TeamRepositoryFailure._();

  /// Failure when an unexpected exception is thrown in the CustomerRepository
  const factory TeamRepositoryFailure.unexpectedException({
    @required Exception exception,
    @required StackTrace stackTrace,
  }) = UnexpectedException;

  /// Failure when trying to access data without permission
  const factory TeamRepositoryFailure.insufficientPermissions() =
      InsufficientPermissions;

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
    );
  }
}
