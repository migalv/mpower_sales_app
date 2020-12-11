import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sales_app/domain/core/i_unique_id_generator.dart';
import 'package:sales_app/infrastructure/core/firestore_unique_id_generator.dart';

void main() {
  MockFirestoreInstance mockFirestore;
  FirestoreUniqueIdGenerator uniqueIdGenerator;

  setUp(() {
    mockFirestore = MockFirestoreInstance();
    uniqueIdGenerator = FirestoreUniqueIdGenerator(mockFirestore);
  });

  group('initialize', () {
    test(
      'should initialize the generator',
      () async {
        // act
        expect(uniqueIdGenerator.currentStatus, GeneratorStatus.uninitialized);
        final result = uniqueIdGenerator.initialize();
        // assert
        expect(result, GeneratorStatus.initialized);
        expect(uniqueIdGenerator.currentStatus, GeneratorStatus.initialized);
      },
    );
  });

  group('uniqueId', () {
    test(
      'should generate a unique Id using Firestore',
      () async {
        // act
        uniqueIdGenerator.initialize();
        final result = uniqueIdGenerator.uniqueId;
        // assert
        expect(result, isNot(null));
        expect(result, isA<String>());
      },
    );

    test(
      'should throw an UninitializedGenerator exception when generator not initialized',
      () async {
        // assert
        expect(
          () => uniqueIdGenerator.uniqueId,
          throwsA(isInstanceOf<UninitializedGeneratorException>()),
        );
      },
    );

    test(
      'should never return a reserved id',
      () async {
        // arrange
        const tReservedId = "asdfghjk";
        uniqueIdGenerator.initialize(reservedIds: [tReservedId]);
        // act
        final result = uniqueIdGenerator.uniqueId;
        // assert
        expect(result, isNot(tReservedId));
        expect(result, isNot(null));
        expect(result, isNot(UninitializedGeneratorException));
      },
    );
  });

  group('getUniqueIdFromSeed', () {
    test(
      'should generate a unique id using Firestore & the given seed',
      () async {
        // act
        uniqueIdGenerator.initialize();
        final result = uniqueIdGenerator.getUniqueIdFromSeed("seed");
        // assert
        expect(result, isNot(null));
        expect(result, isA<String>());
      },
    );

    test(
      'should throw an UninitializedGenerator exception when generator not initialized',
      () async {
        // assert
        expect(
          () => uniqueIdGenerator.getUniqueIdFromSeed("seed"),
          throwsA(isInstanceOf<UninitializedGeneratorException>()),
        );
      },
    );

    test(
      'should never return a reserved id',
      () async {
        // arrange
        const tReservedId = "asdfghjk";
        uniqueIdGenerator.initialize(reservedIds: [tReservedId]);
        // act
        final result = uniqueIdGenerator.getUniqueIdFromSeed("seed");
        // assert
        expect(result, isNot(tReservedId));
        expect(result, isNot(null));
        expect(result, isNot(UninitializedGeneratorException));
      },
    );
  });
}
