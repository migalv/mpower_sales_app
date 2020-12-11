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
      '''should generate a diferent unique id each time it's called''',
      () async {
        // act
        uniqueIdGenerator.initialize();
        final result1 = uniqueIdGenerator.uniqueId;
        final result2 = uniqueIdGenerator.uniqueId;
        final result3 = uniqueIdGenerator.uniqueId;
        final result4 = uniqueIdGenerator.uniqueId;
        final result5 = uniqueIdGenerator.uniqueId;
        final results = [
          result1,
          result2,
          result3,
          result4,
          result5,
        ];
        // assert
        expect(result1, isNot(contains(List.from(results)..remove(result1))));
        expect(result2, isNot(contains(List.from(results)..remove(result2))));
        expect(result3, isNot(contains(List.from(results)..remove(result3))));
        expect(result4, isNot(contains(List.from(results)..remove(result4))));
        expect(result5, isNot(contains(List.from(results)..remove(result5))));
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
      '''should generate a different unique id each time it's called''',
      () async {
        // act
        uniqueIdGenerator.initialize();
        final result1 = uniqueIdGenerator.getUniqueIdFromSeed("seed");
        final result2 = uniqueIdGenerator.getUniqueIdFromSeed("seed");
        final result3 = uniqueIdGenerator.getUniqueIdFromSeed("seed");
        final result4 = uniqueIdGenerator.getUniqueIdFromSeed("seed");
        final result5 = uniqueIdGenerator.getUniqueIdFromSeed("seed");
        final results = [
          result1,
          result2,
          result3,
          result4,
          result5,
        ];
        // assert
        expect(result1, isNot(contains(List.from(results)..remove(result1))));
        expect(result2, isNot(contains(List.from(results)..remove(result2))));
        expect(result3, isNot(contains(List.from(results)..remove(result3))));
        expect(result4, isNot(contains(List.from(results)..remove(result4))));
        expect(result5, isNot(contains(List.from(results)..remove(result5))));
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
