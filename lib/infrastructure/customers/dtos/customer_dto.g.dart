// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerDTO _$_$_CustomerDTOFromJson(Map<String, dynamic> json) {
  return _$_CustomerDTO(
    name: json['name'] as String,
    phoneNumber:
        const PhoneNumberConverter().fromJson(json['phone_number'] as String),
    type: _$enumDecodeNullable(_$CustomerTypeEnumMap, json['type']),
    lastName: json['last_name'] as String,
    birthDate: json['birth_date'] as int,
    nrc: json['nrc'] as String,
    employeeNum: json['employee_num'] as String,
    farmerId: json['farmer_id'] as String,
    nationalId: json['national_id'] as String,
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
  writeNotNull('phone_number',
      const PhoneNumberConverter().toJson(instance.phoneNumber));
  writeNotNull('type', _$CustomerTypeEnumMap[instance.type]);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('birth_date', instance.birthDate);
  writeNotNull('nrc', instance.nrc);
  writeNotNull('employee_num', instance.employeeNum);
  writeNotNull('farmer_id', instance.farmerId);
  writeNotNull('national_id', instance.nationalId);
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
  CustomerType.person: 'person',
  CustomerType.company: 'company',
};
