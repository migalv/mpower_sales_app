import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'personal_id.freezed.dart';

/// Represents a unique identifier a of a real person (ex: DNI, NRC, ...)
@freezed
abstract class PersonalId with _$PersonalId {
  const factory PersonalId({
    /// The key used in the data base
    @required String key,

    /// The actual personal identifier
    @required String value,
  }) = _PersonalId;
}
