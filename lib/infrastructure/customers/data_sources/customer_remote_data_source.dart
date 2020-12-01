import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/core/data_sources/i_data_source.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/infrastructure/core/firestore_collection_keys.dart';
import 'package:sales_app/infrastructure/core/firestore_helpers.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';
import 'package:rxdart/rxdart.dart';

class CustomerRemoteDataSource implements IDataSource<Customer> {
  final FirebaseFirestore _firestore;
  final String key = FirestoreCollectionKeys.customers;

  /// Data source that uses Firestore to store Customers remotely
  CustomerRemoteDataSource(this._firestore);

  @override
  Future<Either<DataSourceFailure, List<Customer>>> getAll() async {
    QuerySnapshot snapshot;

    try {
      snapshot = await _firestore.customersCollection.get();
    } catch (e) {
      final failure = DataSourceFailure.serverError(error: e);
      return Left(failure);
    }

    if (snapshot == null) {
      const failure = DataSourceFailure.serverError();
      return const Left(failure);
    }

    final List<Customer> customers = snapshot.docs
        .map((doc) => CustomerDTO.fromFirestore(doc).toDomain())
        .toList();

    return Right(customers);
  }

  @override
  Future<Either<DataSourceFailure, Customer>> getElementWithId(
      String id) async {
    DocumentSnapshot snapshot;

    if (id == null) {
      const failure = DataSourceFailure.nullElement();
      return const Left(failure);
    }

    try {
      snapshot = await _firestore.customersCollection.doc(id).get();
    } catch (e) {
      final failure = DataSourceFailure.serverError(error: e);
      return Left(failure);
    }

    if (snapshot == null) {
      const failure = DataSourceFailure.serverError();
      return const Left(failure);
    }

    if (snapshot.exists == false) {
      const failure = DataSourceFailure.elementNotFound();

      return const Left(failure);
    }

    final Customer customer = CustomerDTO.fromFirestore(snapshot).toDomain();

    return Right(customer);
  }

  @override
  Stream<Either<DataSourceFailure, List<Customer>>> watchAll() async* {
    yield* _firestore.customersCollection.snapshots().map((snapshot) {
      return right<DataSourceFailure, List<Customer>>(snapshot.docs.map((doc) {
        return CustomerDTO.fromFirestore(doc).toDomain();
      }).toList());
    }).onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSIONS_DENIED')) {
        const failure = DataSourceFailure.insufficientPermissions();
        return left(failure);
      }

      final failure = DataSourceFailure.serverError(error: e);
      return left(failure);
    });
  }
}
