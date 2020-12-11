// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerDTO _$_$_CustomerDTOFromJson(Map<String, dynamic> json) {
  return _$_CustomerDTO(
    name: json['name'] as String,
    updatedAt: json['updated_at'] as int,
    type: _$enumDecodeNullable(_$CustomerTypeEnumMap, json['type']),
    phone: const PhoneNumberConverter().fromJson(json['phone'] as String),
    surname: json['surname'] as String,
    dateOfBirth: json['date_of_birth'] as int,
    email: json['email'] as String,
    nrc: json['nrc'] as String,
    employeeNum: json['employee_num'] as String,
    farmerId: json['farmer_id'] as String,
    nationalId: json['national_id'] as String,
    teamId: json['team_id'] as String,
    teamName: json['team_name'] as String,
  );
}

Map<String, dynamic> _$_$_CustomerDTOToJson(_$_CustomerDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('type', _$CustomerTypeEnumMap[instance.type]);
  writeNotNull('phone', const PhoneNumberConverter().toJson(instance.phone));
  writeNotNull('surname', instance.surname);
  writeNotNull('date_of_birth', instance.dateOfBirth);
  writeNotNull('email', instance.email);
  writeNotNull('nrc', instance.nrc);
  writeNotNull('employee_num', instance.employeeNum);
  writeNotNull('farmer_id', instance.farmerId);
  writeNotNull('national_id', instance.nationalId);
  writeNotNull('team_id', instance.teamId);
  writeNotNull('team_name', instance.teamName);
  return val;
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$CustomerTypeEnumMap = {
  CustomerType.person: 0,
  CustomerType.company: 1,
};
