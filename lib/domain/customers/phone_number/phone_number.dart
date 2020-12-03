import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_number.freezed.dart';

@freezed

/// Represents a phone with it's country code & number
abstract class PhoneNumber implements _$PhoneNumber {
  const factory PhoneNumber({
    /// Country code
    @required String code,

    /// Phone number
    @required String number,
  }) = _PhoneNumber;

  const PhoneNumber._();

  @override
  String toString() => "+$code $number";
}
