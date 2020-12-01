import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_source_failure.freezed.dart';

@freezed
abstract class DataSourceFailure with _$DataSourceFailure {
  /// Failure when an unexpected exception is thrown
  const factory DataSourceFailure.unexpectedException({
    @required Exception exception,
    @required StackTrace stackTrace,
  }) = UnexpectedException;

  /// Failure when the provided element is null
  const factory DataSourceFailure.nullElement() = NullElement;

  /// Failure when the element is not present in the datasource
  const factory DataSourceFailure.elementNotFound() = ElementNotFound;

  /// Failure when there are no elements for the given collection
  const factory DataSourceFailure.noElementsFor({
    @required String collection,
  }) = NoElementsForCollection;

  const factory DataSourceFailure.serverError({
    dynamic error,
  }) = ServerError;

  /// Failure when trying to access data without the required permissions
  const factory DataSourceFailure.insufficientPermissions() =
      InsufficientPermissions;
}
