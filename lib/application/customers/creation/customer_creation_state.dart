part of 'customer_creation_bloc.dart';

@freezed
abstract class CustomerCreationState with _$CustomerCreationState {
  /// When the CustomerCreation is first opened
  ///
  /// It will load the needed data from the DataSources
  const factory CustomerCreationState.loadInProgress() = _LoadInProgress;

  /// When something failed when loading the Customer Creation Page
  const factory CustomerCreationState.loadFailed({
    @required List<String> errorMessages,
  }) = _LoadFailed;

  /// When everything has loaded and the view is in the first step of the creation
  ///
  /// This step is usually the gather the required info (Name, surname, phone, DNI, ...)
  const factory CustomerCreationState.initialStep({
    /// The document types that need to be entered (DNI, NRC, Employee num, etc.)
    @required List<DocumentType> documentTypes,
  }) = _InitialStep;

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
