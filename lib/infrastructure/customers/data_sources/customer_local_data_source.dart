import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart' hide id;
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';
import 'package:sales_app/domain/core/data_sources/i_local_data_source.dart';
import 'package:sales_app/domain/core/i_unique_id_generator.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: ILocalDataSource)
class CustomerLocalDataSource implements ILocalDataSource<CustomerDTO> {
  final SharedPreferences _sharedPreferences;
  final IUniqueIdGenerator _uniqueIdGenerator;

  /// Stream updated everytime we save or remove a Customer from SharedPreferences
  ValueStream<Map<String, CustomerDTO>> get _stream => _streamController.stream;
  final _streamController = BehaviorSubject<Map<String, CustomerDTO>>();

  /// The key used for SharedPreferences to store the customers
  static const String key = "customers";

  /// Data source that uses SharedPreferences to store customers locally
  CustomerLocalDataSource(
    this._sharedPreferences,

    /// Unique id generator used to create the unique ids for the LocalDataSource
    this._uniqueIdGenerator,
  ) {
    final String string = _sharedPreferences.getString(key);

    Map<String, dynamic> json = {};
    Map<String, CustomerDTO> customerDTOs = {};

    if (string != null) {
      json = jsonDecode(string) as Map<String, dynamic>;

      customerDTOs = json.map(
        (id, json) => MapEntry(
          id,
          CustomerDTO.fromLocalDataSource(
              id: id, json: json as Map<String, dynamic>),
        ),
      );
    }

    final List<String> ids = customerDTOs.keys.toList();

    switch (_uniqueIdGenerator.currentStatus) {
      case GeneratorStatus.uninitialized:
        _uniqueIdGenerator.initialize(reservedIds: ids);
        break;
      case GeneratorStatus.initialized:
        _uniqueIdGenerator.addAsReserved(ids);
        break;
    }

    _streamController.add(customerDTOs);
  }

  @override
  Future<Either<DataSourceFailure, Map<String, CustomerDTO>>> getAll() async =>
      Right(_stream.value);

  @override
  Stream<Either<DataSourceFailure, Map<String, CustomerDTO>>> watchAll() =>
      _stream.map((customers) {
        return right<DataSourceFailure, Map<String, CustomerDTO>>(customers);
      }).onErrorReturnWith((e) {
        return left(DataSourceFailure.serverError(error: e));
      });

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
        final Map<String, CustomerDTO> customerDTOs = _stream.value;
        customerDTOs.remove(id);
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
  Future<Either<DataSourceFailure, Unit>> save(CustomerDTO newDTO) async {
    if (newDTO == null) {
      const failure = DataSourceFailure.nullElement();
      return const Left(failure);
    }
    try {
      Map<String, dynamic> json = {};
      CustomerDTO dto = newDTO;

      if (newDTO.id == null) {
        dto = newDTO.copyWith(id: _uniqueIdGenerator.getUniqueIdFromSeed(key));
      }

      final String string = _sharedPreferences.getString(key);

      if (string != null) json = jsonDecode(string) as Map<String, dynamic>;

      json[dto.id] = dto.toJson();

      final String newString = jsonEncode(json);

      _sharedPreferences.setString(key, newString);

      // Update the stream
      final Map<String, CustomerDTO> customerDTOs = _stream.value;
      customerDTOs[dto.id] = dto;

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
