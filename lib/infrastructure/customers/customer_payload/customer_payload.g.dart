// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerPayload _$_$_CustomerPayloadFromJson(Map<String, dynamic> json) {
  return _$_CustomerPayload(
    name: json['name'] as String,
    teamId: json['team_id'] as String,
    teamName: json['team_name'] as String,
    type: _$enumDecodeNullable(_$CustomerTypeEnumMap, json['type']),
    surname: json['surname'] as String,
    extraData: json['extra_data'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$_$_CustomerPayloadToJson(_$_CustomerPayload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('team_id', instance.teamId);
  writeNotNull('team_name', instance.teamName);
  writeNotNull('type', _$CustomerTypeEnumMap[instance.type]);
  writeNotNull('surname', instance.surname);
  writeNotNull('extra_data', instance.extraData);
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
