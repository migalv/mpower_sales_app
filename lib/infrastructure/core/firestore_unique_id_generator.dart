import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_app/domain/core/i_unique_id_generator.dart';

@LazySingleton(as: IUniqueIdGenerator)
class FirestoreUniqueIdGenerator implements IUniqueIdGenerator {
  final FirebaseFirestore _firestore;
  GeneratorStatus _currentStatus;
  Set<String> _reservedIds = {};

  /// Unique id generator that uses Firestore as the generator
  FirestoreUniqueIdGenerator(this._firestore) {
    _currentStatus = GeneratorStatus.uninitialized;
  }

  @override
  String getUniqueIdFromSeed(String seed) =>
      _generateUniqueId(() => _firestore.collection(seed).doc().id);

  @override
  String get uniqueId => _generateUniqueId(
      () => _firestore.collection(Random().nextDouble().toString()).doc().id);

  @override
  GeneratorStatus initialize({
    List<String> reservedIds = const [],
  }) {
    assert(reservedIds != null);
    _reservedIds = reservedIds.toSet();
    return _currentStatus = GeneratorStatus.initialized;
  }

  @override
  GeneratorStatus get currentStatus => _currentStatus;

  String _generateUniqueId(String Function() generationMethod) {
    String generatedId;

    switch (_currentStatus) {
      case GeneratorStatus.uninitialized:
        throw UninitializedGeneratorException();
        break;
      case GeneratorStatus.initialized:
        while (generatedId == null) {
          generatedId = generationMethod();
          if (_reservedIds.contains(generatedId)) {
            generatedId = null;
          } else {
            _reservedIds.add(generatedId);
          }
        }
        break;
    }

    return generatedId;
  }

  @override
  void addAsReserved(List<String> ids) => _reservedIds.addAll(ids);
}
