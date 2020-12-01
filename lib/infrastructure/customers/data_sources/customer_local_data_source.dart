import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart' hide id;
import 'package:rxdart/rxdart.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';
import 'package:sales_app/domain/core/data_sources/i_local_data_source.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomerLocalDataSource implements ILocalDataSource<CustomerDTO> {
  final SharedPreferences _sharedPreferences;

  /// Stream updated everytime we save or remove a Customer from SharedPreferences
  ValueStream<Set<CustomerDTO>> get _stream => _streamController.stream;
  final _streamController = BehaviorSubject<Set<CustomerDTO>>();

  /// The key used for SharedPreferences to store the customers
  static const String key = "customers";

  /// Data source that uses SharedPreferences to store customers locally
  CustomerLocalDataSource(this._sharedPreferences) {
    final String string = _sharedPreferences.getString(key);

    Map<String, dynamic> json = {};
    Set<CustomerDTO> customerDTOs = {};

    if (string != null) {
      json = jsonDecode(string) as Map<String, dynamic>;

      customerDTOs = json.entries
          .map((entry) => CustomerDTO.fromLocalDataSource(
              json: entry.value as Map<String, dynamic>, id: entry.key))
          .toSet();
    }

    _streamController.add(customerDTOs);
  }

  @override
  Future<Either<DataSourceFailure, List<CustomerDTO>>> getAll() async =>
      Right(_stream.value.toList());

  @override
  Stream<Either<DataSourceFailure, List<CustomerDTO>>> watchAll() =>
      _stream.map((customers) => Right(customers.toList()));

  @override
  Future<Either<DataSourceFailure, CustomerDTO>> removeWithId(String id) async {
    if (id == null) {
      const failure = DataSourceFailure.nullElement();

      return const Left(failure);
    }
    try {
      Map<String, dynamic> json = {};

      final String string = _sharedPreferences.getString(key);

      if (string != null) {
        json = jsonDecode(string) as Map<String, dynamic>;
        final customerJson = json.remove(id) as Map<String, dynamic>;

        if (customerJson == null) {
          const failure = DataSourceFailure.elementNotFound();

          return const Left(failure);
        }

        final customerDTO =
            CustomerDTO.fromLocalDataSource(json: customerJson, id: id);

        _sharedPreferences.setString(key, jsonEncode(json));

        // Update the stream
        final Set<CustomerDTO> customerDTOs = _stream.value;
        customerDTOs.removeWhere((c) => c.id == id);
        _streamController.add(customerDTOs);

        return Right(customerDTO);
      } else {
        const failure = DataSourceFailure.noElementsFor(collection: key);

        return const Left(failure);
      }
    } on Exception catch (e, s) {
      final failure =
          DataSourceFailure.unexpectedException(exception: e, stackTrace: s);

      return Left(failure);
    }
  }

  @override
  Future<Either<DataSourceFailure, Unit>> save(CustomerDTO dto) async {
    if (dto == null) {
      const failure = DataSourceFailure.nullElement();
      return const Left(failure);
    }
    try {
      Map<String, dynamic> json = {};

      final String string = _sharedPreferences.getString(key);

      if (string != null) json = jsonDecode(string) as Map<String, dynamic>;

      json[dto.id] = dto.toJson();

      final String newString = jsonEncode(json);

      _sharedPreferences.setString(key, newString);

      // Update the stream
      final Set<CustomerDTO> customerDTOs = _stream.value;
      customerDTOs.removeWhere((c) => c.id == dto.id);
      customerDTOs.add(dto);

      _streamController.add(customerDTOs);
    } on Exception catch (e, s) {
      final failure =
          DataSourceFailure.unexpectedException(exception: e, stackTrace: s);

      return Left(failure);
    }

    return const Right(unit);
  }

  @override
  Future<Either<DataSourceFailure, CustomerDTO>> getElementWithId(
    String id,
  ) async {
    if (id == null) {
      const failure = DataSourceFailure.nullElement();

      return const Left(failure);
    }
    try {
      Map<String, dynamic> json = {};

      final String string = _sharedPreferences.getString(key);

      if (string != null) {
        json = jsonDecode(string) as Map<String, dynamic>;
        final customerJson = json[id] as Map<String, dynamic>;

        if (customerJson == null) {
          const failure = DataSourceFailure.elementNotFound();

          return const Left(failure);
        }

        final CustomerDTO dto =
            CustomerDTO.fromLocalDataSource(json: customerJson, id: id);

        return Right(dto);
      } else {
        const failure = DataSourceFailure.noElementsFor(collection: key);

        return const Left(failure);
      }
    } on Exception catch (e, s) {
      final failure =
          DataSourceFailure.unexpectedException(exception: e, stackTrace: s);

      return Left(failure);
    }
  }

  @override
  Future<Either<DataSourceFailure, Unit>> clear() async {
    try {
      await _sharedPreferences.clear();
      _streamController.add({});
    } on Exception catch (e, s) {
      final failure =
          DataSourceFailure.unexpectedException(exception: e, stackTrace: s);

      return Left(failure);
    }

    return const Right(unit);
  }
}
