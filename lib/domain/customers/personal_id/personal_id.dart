import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'personal_id.freezed.dart';

/// Represents a unique identifier a of a real person (ex: DNI, NRC, ...)
@freezed
abstract class PersonalId with _$PersonalId {
  const factory PersonalId.nrc({
    @required String nrc,
  }) = NRC;

  const factory PersonalId.employeeNum({
    @required String employeeNum,
  }) = EmployeeNum;

  const factory PersonalId.farmerId({
    @required String farmerId,
  }) = FarmerId;

  const factory PersonalId.nationalId({
    @required String nationalId,
  }) = NationalId;
}
