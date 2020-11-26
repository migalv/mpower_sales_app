import 'package:json_annotation/json_annotation.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';

class PhoneNumberConverter implements JsonConverter<PhoneNumber, String> {
  /// Converts from a PhoneNumber to a String using JsonSerializable
  ///
  ///  Correct phone format "+### #########"
  /// + sign then 1 to 3 digits then 9 digits separated by a space
  const PhoneNumberConverter();

  @override
  PhoneNumber fromJson(String json) {
    if (json == null || json.isEmpty) {
      return null;
    }

    String code;
    String number;

    final List<String> list = json.split(' ');
    code = list.first.replaceAll('+', '');
    number = list.last;

    return PhoneNumber(
      code: code,
      number: number,
    );
  }

  @override
  String toJson(PhoneNumber pn) => "+${pn.code} ${pn.number}";
}
