import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/core/data_sources/i_data_source.dart';
import 'package:sales_app/domain/core/failures/failure/failure.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomerLocalDataSource implements IDataSource<Customer> {
  SharedPreferences _sharedPreferences;

  /// The key used for SharedPreferences to store the customers
  static const String key = "customers";

  /// Data source that uses SharedPreferences to store customers locally
  CustomerLocalDataSource(this._sharedPreferences);

  @override
  Future<Either<Failure, Set<Customer>>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<Customer>>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> remove(Customer element) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeWithId(String id) {
    // TODO: implement removeWithId
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> save(Customer element) async {
    try {
      final List<String> stringList = _sharedPreferences.getStringList(key);

      // Convert each string into Json Object
      final Set<Map<String, dynamic>> jsonList = stringList
          .map((string) => jsonDecode(string) as Map<String, dynamic>)
          .toSet();

      // We create a new json because it's more efficient
      final List<Map<String, dynamic>> newJsonList = [];

      for (final Map<String, dynamic> json in jsonList) {
        if (json["id"] != element.id) newJsonList.add(json);
      }

      // TODO IMPLEMENT TO JSON
      newJsonList.add(element.toJson());

      final List<String> newStringList =
          newJsonList.map((json) => jsonEncode(json)).toList();

      _sharedPreferences.setStringList(key, newStringList);
    } on Exception catch (e, s) {
      final Failure failure =
          Failure.unexpectedException(exception: e, stackTrace: s);

      return Left(failure);
    }

    return const Right(unit);
  }
}
