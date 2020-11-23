import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/core/exceptions.dart';

part 'phone_number.freezed.dart';

@freezed

/// Represents a phone with it's country code & number
abstract class PhoneNumber with _$PhoneNumber {
  const factory PhoneNumber({
    /// Country code
    @required String code,

    /// Phone number
    @required String number,
  }) = _PhoneNumber;
}

/// Converts from a PhoneNumber to a String using JsonSerializable
///
///  Correct phone format "+### #########"
/// + sign then 1 to 3 digits then 9 digits separated by a space
class PhoneNumberConverter implements JsonConverter<PhoneNumber, String> {
  const PhoneNumberConverter();

  @override

  /// Throws [IncorrectlyFormattedPhoneException] if the phone is well formatted
  ///
  /// Correct phone format "+### #########"
  /// + sign then 1 to 3 digits then 9 digits separated by a space
  PhoneNumber fromJson(String json) {
    if (json == null || json.isEmpty) {
      return null;
    }

    String code;
    String number;

    try {
      final List<String> list = json.split(' ');
      code = list.first;
      number = list.last;
    } catch (e) {
      throw IncorrectlyFormattedPhoneException();
    }

    return PhoneNumber(
      code: code,
      number: number,
    );
  }

  @override
  String toJson(PhoneNumber pn) => "+${pn.code} ${pn.number}";
}
