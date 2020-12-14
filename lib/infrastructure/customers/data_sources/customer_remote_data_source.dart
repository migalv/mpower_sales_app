import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_app/domain/core/data_sources/data_source_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/core/data_sources/i_data_source.dart';
import 'package:sales_app/infrastructure/core/firestore_collection_keys.dart';
import 'package:sales_app/infrastructure/core/helpers/firestore_helpers.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IDataSource)
class CustomerRemoteDataSource implements IDataSource<CustomerDTO> {
  final FirebaseFirestore _firestore;
  final String key = FirestoreCollectionKeys.customers;

  /// Data source that uses Firestore to store Customers remotely
  CustomerRemoteDataSource(this._firestore);

  @override
  Future<Either<DataSourceFailure, Map<String, CustomerDTO>>> getAll() async {
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

    final Map<String, CustomerDTO> customers = {
      for (var doc in snapshot.docs) doc.id: CustomerDTO.fromFirestore(doc)
    };

    return Right(customers);
  }

  @override
  Future<Either<DataSourceFailure, CustomerDTO>> getElementWithId(
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

    final customer = CustomerDTO.fromFirestore(snapshot);

    return Right(customer);
  }

  @override
  Stream<Either<DataSourceFailure, Map<String, CustomerDTO>>>
      watchAll() async* {
    yield* _firestore.customersCollection.snapshots().map((snapshot) {
      return right<DataSourceFailure, Map<String, CustomerDTO>>({
        for (var doc in snapshot.docs) doc.id: CustomerDTO.fromFirestore(doc)
      });
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
