import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart' hide id;
import 'package:rxdart/rxdart.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';
import 'package:sales_app/domain/core/data_sources/i_data_source.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomerLocalDataSource implements IDataSource<Customer> {
  final SharedPreferences _sharedPreferences;

  /// Stream updated everytime we save or remove a Customer from SharedPreferences
  ValueStream<Set<Customer>> get _stream => _streamController.stream;
  final _streamController = BehaviorSubject<Set<Customer>>();

  /// The key used for SharedPreferences to store the customers
  static const String key = "customers";

  /// Data source that uses SharedPreferences to store customers locally
  CustomerLocalDataSource(this._sharedPreferences) {
    final String string = _sharedPreferences.getString(key);

    Map<String, dynamic> json = {};
    Set<Customer> customers = {};

    if (string != null) {
      json = jsonDecode(string) as Map<String, dynamic>;

      final Set<CustomerDTO> customerDTOs = json.values
          .map((customerJson) =>
              CustomerDTO.fromJson(customerJson as Map<String, dynamic>))
          .toSet();

      customers = customerDTOs.map((dto) => dto.toDomain()).toSet();
    }

    _streamController.add(customers);
  }

  @override
  Future<Either<DataSourceFailure, List<Customer>>> getAll() async =>
      Right(_stream.value.toList());

  @override
  Stream<List<Customer>> watchAll() =>
      _stream.map((customers) => customers.toList());

  @override
  Future<Either<DataSourceFailure, Customer>> removeWithId(String id) async {
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

        final customer = CustomerDTO.fromJson(customerJson).toDomain();

        _sharedPreferences.setString(key, jsonEncode(json));

        // Update the stream
        final Set<Customer> customers = _stream.value;
        customers.removeWhere((c) => c.id == id);
        _streamController.add(customers);

        return Right(customer);
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
  Future<Either<DataSourceFailure, Unit>> save(Customer element) async {
    if (element == null) {
      const failure = DataSourceFailure.nullElement();
      return const Left(failure);
    }
    try {
      Map<String, dynamic> json = {};

      final String string = _sharedPreferences.getString(key);

      if (string != null) json = jsonDecode(string) as Map<String, dynamic>;

      final CustomerDTO dto = CustomerDTO.fromDomain(element);
      json[element.id] = dto.toJson();

      final String newString = jsonEncode(json);

      _sharedPreferences.setString(key, newString);

      // Update the stream
      final addedCustomer = dto.toDomain();
      final Set<Customer> customers = _stream.value;
      customers.removeWhere((c) => c.id == addedCustomer.id);
      customers.add(addedCustomer);

      _streamController.add(customers);
    } on Exception catch (e, s) {
      final failure =
          DataSourceFailure.unexpectedException(exception: e, stackTrace: s);

      return Left(failure);
    }

    return const Right(unit);
  }

  @override
  Future<Either<DataSourceFailure, Customer>> getElementWithId(
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

        final CustomerDTO dto = CustomerDTO.fromJson(customerJson);
        final Customer customer = dto.toDomain();

        return Right(customer);
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
}
