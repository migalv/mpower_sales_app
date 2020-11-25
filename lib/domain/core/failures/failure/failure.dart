import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// Most basic Failure that can occur
@freezed
abstract class Failure with _$Failure {
  /// Used in the case that an unexpected exception is thrown and cached
  const factory Failure.unexpectedException({
    @required Exception exception,
    @required StackTrace stackTrace,
  }) = UnexpectedException;
}
