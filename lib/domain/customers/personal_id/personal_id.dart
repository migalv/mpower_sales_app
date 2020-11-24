import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'personal_id.freezed.dart';

/// Represents a unique identifier a of a real person (ex: DNI, NRC, ...)
@freezed
abstract class PersonalId with _$PersonalId {
  const factory PersonalId({
    @required String key,
    @required String value,
    String label,
  }) = _PersonalId;
}
