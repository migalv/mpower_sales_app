part of 'customer_creation_bloc.dart';

@freezed
abstract class CustomerCreationEvent with _$CustomerCreationEvent {
  /// When the user taps on Create button
  ///
  /// We assume the data has been validated by the Form validator in the
  /// presentation layer
  const factory CustomerCreationEvent.saveButtonPressed({
    /// Should not be null
    @required String customerName,

    /// Should not be null
    @required String customerSurname,

    /// Coutry code can have + sign or not
    @required String countryCode,

    /// Phone number can be separated by spaces or not
    @required String phoneNumber,
  }) = _SaveButtonPressed;
}
