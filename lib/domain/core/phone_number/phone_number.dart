import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_number.freezed.dart';

@freezed

/// Data class that represents a phone with it's country code & number
abstract class PhoneNumber with _$PhoneNumber {
  const factory PhoneNumber({
    /// Country code
    @required String code,

    /// Phone number
    @required String number,
  }) = _PhoneNumber;

  /// Creates a phone number with the country code for Zambia
  factory PhoneNumber.zambia({
    @required String number,
  }) =>
      PhoneNumber(code: "+260", number: number);

  /// Creates a phone number with the country code for Cameroon
  factory PhoneNumber.cameroon({
    @required String number,
  }) =>
      PhoneNumber(code: "+237", number: number);

  /// Creates a phone number with the country code for Togo
  factory PhoneNumber.togo({
    @required String number,
  }) =>
      PhoneNumber(code: "+228", number: number);

  /// Creates a phone number with the country code for Botswana
  factory PhoneNumber.botswana({
    @required String number,
  }) =>
      PhoneNumber(code: "+267", number: number);
}
