import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';
import 'package:sales_app/domain/core/data_sources/i_data_source.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomerLocalDataSource implements IDataSource<Customer> {
  final SharedPreferences _sharedPreferences;

  /// The key used for SharedPreferences to store the customers
  static const String key = "customers";

  /// Data source that uses SharedPreferences to store customers locally
  CustomerLocalDataSource(this._sharedPreferences);

  @override
  Future<Either<DataSourceFailure, Set<Customer>>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Stream<Either<DataSourceFailure, Set<Customer>>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

  @override
  Future<Either<DataSourceFailure, Unit>> remove(Customer element) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Future<Either<DataSourceFailure, Unit>> removeWithId(String id) {
    // TODO: implement removeWithId
    throw UnimplementedError();
  }

  @override
  Future<Either<DataSourceFailure, Unit>> save(Customer element) async {
    if (element == null) {
      const failure = DataSourceFailure.cannotSaveNullElements();
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
    } on Exception catch (e, s) {
      final failure =
          DataSourceFailure.unexpectedException(exception: e, stackTrace: s);

      return Left(failure);
    }

    return const Right(unit);
  }

  @override
  Future<Either<DataSourceFailure, Customer>> getElementWithId(
      String id) async {
    try {
      Map<String, dynamic> json = {};

      final String string = _sharedPreferences.getString(key);

      if (string != null) {
        json = jsonDecode(string) as Map<String, dynamic>;
        final customerJson = json[id] as Map<String, dynamic>;

        final CustomerDTO dto = CustomerDTO.fromJson(customerJson);
        final Customer customer = dto.toDomain();

        return Right(customer);
      } else {
        const failure = DataSourceFailure.elementNotFound();

        return const Left(failure);
      }
    } on Exception catch (e, s) {
      final failure =
          DataSourceFailure.unexpectedException(exception: e, stackTrace: s);

      return Left(failure);
    }
  }
}
