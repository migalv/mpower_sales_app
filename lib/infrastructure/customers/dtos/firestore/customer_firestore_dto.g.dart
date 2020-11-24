// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_firestore_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerFirestoreDTO _$_$_CustomerFirestoreDTOFromJson(
    Map<String, dynamic> json) {
  return _$_CustomerFirestoreDTO(
    name: json['name'] as String,
    availableTo: json['availableTo'] as Map<String, dynamic>,
    createdAt: json['created_at'] as int,
    createdBy: json['created_by'] as String,
    createdByName: json['created_by_name'] as String,
    lastUpdatedBy: json['last_updated_by'] as String,
    lastUpdatedByName: json['last_updated_by_name'] as String,
    type: json['type'] as int,
    surname: json['surname'] as String,
    farmerId: json['farmer_id'] as String,
    employeeNum: json['employee_num'] as String,
    nrc: json['nrc'] as String,
    dateOfBirth: json['date_of_birth'] as int,
    email: json['email'] as String,
    phone: const PhoneNumberConverter().fromJson(json['phone'] as String),
  );
}

Map<String, dynamic> _$_$_CustomerFirestoreDTOToJson(
    _$_CustomerFirestoreDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('availableTo', instance.availableTo);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('created_by', instance.createdBy);
  writeNotNull('created_by_name', instance.createdByName);
  writeNotNull('last_updated_by', instance.lastUpdatedBy);
  writeNotNull('last_updated_by_name', instance.lastUpdatedByName);
  writeNotNull('type', instance.type);
  writeNotNull('surname', instance.surname);
  writeNotNull('farmer_id', instance.farmerId);
  writeNotNull('employee_num', instance.employeeNum);
  writeNotNull('nrc', instance.nrc);
  writeNotNull('date_of_birth', instance.dateOfBirth);
  writeNotNull('email', instance.email);
  writeNotNull('phone', const PhoneNumberConverter().toJson(instance.phone));
  return val;
}
