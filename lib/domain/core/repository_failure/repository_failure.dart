import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_failure.freezed.dart';

@freezed
abstract class RepositoryFailure with _$RepositoryFailure {
  const factory RepositoryFailure.unknownError({
    @required dynamic exception,
    @required StackTrace stackTrace,
    @required String message,
    int errorCode,
  }) = UnknownError;
  const factory RepositoryFailure.serverError({
    String message,
  }) = ServerErorr;
  const factory RepositoryFailure.noServerResponse() = NoServerResponse;
  const factory RepositoryFailure.permissionsDenied() = PermissionsDenied;
  const factory RepositoryFailure.incompleteArguments() = IncompleteArguments;
}
