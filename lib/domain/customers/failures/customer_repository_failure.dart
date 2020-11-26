import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_repository_failure.freezed.dart';

@freezed
abstract class CustomerRepositoryFailure with _$CustomerRepositoryFailure {
  const factory CustomerRepositoryFailure.unexpectedException({
    @required Exception exception,
    @required StackTrace stackTrace,
  }) = UnexpectedException;
}
