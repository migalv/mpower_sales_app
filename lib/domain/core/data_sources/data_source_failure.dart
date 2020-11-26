import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_source_failure.freezed.dart';

@freezed
abstract class DataSourceFailure with _$DataSourceFailure {
  const factory DataSourceFailure.unexpectedException({
    @required Exception exception,
    @required StackTrace stackTrace,
  }) = UnexpectedException;

  const factory DataSourceFailure.cannotSaveNullElements() =
      CannotSaveNullElements;

  const factory DataSourceFailure.elementNotFound() = ElementNotFound;
}
