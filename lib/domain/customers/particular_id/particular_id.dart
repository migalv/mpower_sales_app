import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'particular_id.freezed.dart';

/// Represents a unique identifier a of particular (real person) (ex: DNI, NRC, ...)
@freezed
abstract class ParticularId with _$ParticularId {
  const factory ParticularId({
    @required String key,
    @required String value,
    String label,
  }) = _ParticularId;
}

// /// Converts from a PhoneNumber to a Map using JsonSerializable
// ///
// /// The [key] attribute is set as the key of the Map
// /// And the [value] attribute is set as the value for that key
// class ParticularIdConverter
//     implements JsonConverter<ParticularId, Map<String, dynamic>> {
//   const ParticularIdConverter();

//   @override
//   ParticularId fromJson(Map<String, dynamic> json) {
//     if (json == null) {
//       return null;
//     }

//     final String key = json.entries.first.key;
//     final String value = json.entries.first.value as String;
//     final String label = key.replaceAll("_", " ").capitalizeFirstOfEach;

//     return ParticularId(key: key, value: value, label: label);
//   }

//   @override
//   Map<String, dynamic> toJson(ParticularId pi) => {
//         pi.key: pi.value,
//       };
// }

// class ParticularId {
//   final String key;
//   final String value;
//   final String label;

//   ParticularId({
//     @required this.key,
//     @required this.value,
//     this.label,
//   });

//   Map<String, dynamic> toJson() => {
//         key: value,
//       };
// }
