part of 'customer_creation_bloc.dart';

@freezed
abstract class CustomerCreationState with _$CustomerCreationState {
  /// When the view is in the first step of the creation
  ///
  /// Usually the required info (Name, surname, phone, DNI, ...)
  const factory CustomerCreationState.initialStep() = _InitialStep;

  /// When a Failure occurred
  const factory CustomerCreationState.creationFailure({
    @required CustomerRepositoryFailure failure,
  }) = _CreationFailure;

  /// When the repository is saving the created customer (waiting for response)
  const factory CustomerCreationState.creationInProgress() =
      _CreationInProgress;

  /// When the creation of the Customer was successfull
  const factory CustomerCreationState.creationSuccess() = _CreationSuccess;
}
