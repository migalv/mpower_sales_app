// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_firefunc_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerFireFuncDTO _$_$_CustomerFireFuncDTOFromJson(
    Map<String, dynamic> json) {
  return _$_CustomerFireFuncDTO(
    customerId: json['customer_id'] as String,
    name: json['name'] as String,
    teamId: json['team_id'] as String,
    teamName: json['team_name'] as String,
    surname: json['surname'] as String,
    nrc: json['nrc'] as String,
    employeeNum: json['employee_num'] as String,
    nationalId: json['national_id'] as String,
    type: json['type'] as int,
  );
}

Map<String, dynamic> _$_$_CustomerFireFuncDTOToJson(
    _$_CustomerFireFuncDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_id', instance.customerId);
  writeNotNull('name', instance.name);
  writeNotNull('team_id', instance.teamId);
  writeNotNull('team_name', instance.teamName);
  writeNotNull('surname', instance.surname);
  writeNotNull('nrc', instance.nrc);
  writeNotNull('employee_num', instance.employeeNum);
  writeNotNull('national_id', instance.nationalId);
  writeNotNull('type', instance.type);
  return val;
}
