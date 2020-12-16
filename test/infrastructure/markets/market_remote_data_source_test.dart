import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sales_app/domain/core/data_sources/cached_remote_data_source_failure.dart';
import 'package:sales_app/domain/teams/team.dart';
import 'package:sales_app/infrastructure/markets/market_dto.dart';
import 'package:sales_app/infrastructure/markets/market_remote_data_source.dart';
import 'package:sales_app/infrastructure/teams/team_remote_data_source.dart';
import 'package:sales_app/infrastructure/core/firestore_helpers.dart';

class MockTeamRemoteDateSource extends Mock implements TeamRemoteDataSource {}

void main() {
  MockFirestoreInstance mockFirestore;
  MockTeamRemoteDateSource mockTeamRemoteDateSource;
  MarketRemoteDataSource marketRemoteDataSource;

  const MarketDTO spainDTO = MarketDTO(
    name: "Spain",
    iso: "ESP",
    currency: "EUR",
    documentMethods: ["dni"],
    paymentMethods: [0, 1, 2, 3],
  );
  const MarketDTO franceDTO = MarketDTO(
    name: "France",
    iso: "FRA",
    currency: "EUR",
    documentMethods: ["CNI"],
    paymentMethods: [0, 1, 2],
  );

  setUp(() {
    mockFirestore = MockFirestoreInstance();
    mockTeamRemoteDateSource = MockTeamRemoteDateSource();
    marketRemoteDataSource = MarketRemoteDataSource(
      mockFirestore,
      mockTeamRemoteDateSource,
    );
  });

  group('get', () {
    test(
      'should return the market for first team of the current signed id user',
      () async {
        // arrange
        when(mockTeamRemoteDateSource.get()).thenAnswer(
          (_) async => const Right(
            [
              Team(id: "id1", name: "Spain team", countryIso: "ESP"),
              Team(id: "id2", name: "France team", countryIso: "FRA"),
            ],
          ),
        );
        // We add the Spain doc (expected one)
        final DocumentReference doc =
            await mockFirestore.marketsCollection.add(spainDTO.toJson());
        final expectedMarket = spainDTO.copyWith(id: doc.id);

        // We also add the French doc (we ignore this one)
        await mockFirestore.marketsCollection.add(franceDTO.toJson());

        // act
        final result = await marketRemoteDataSource.get();

        // assert
        expect(result.getOrElse(() => null), expectedMarket);
        verify(mockTeamRemoteDateSource.get()).called(1);
      },
    );

    test(
      'should return the Failure when the team remote data source returns one',
      () async {
        // arrange
        const expectedFailure =
            CachedRemoteDataSourceFailure.insufficientPermissions();
        when(mockTeamRemoteDateSource.get())
            .thenAnswer((_) async => const Left(expectedFailure));

        // act
        final result = await marketRemoteDataSource.get();

        // assert
        expect(result, left(expectedFailure));
        verify(mockTeamRemoteDateSource.get()).called(1);
      },
    );

    test(
      'should return ElementNotFound Failure when the team remote data source returns an empty list',
      () async {
        // arrange
        when(mockTeamRemoteDateSource.get())
            .thenAnswer((_) async => const Right([]));
        // act
        final result = await marketRemoteDataSource.get();
        // assert
        expect(
          result,
          const Left(CachedRemoteDataSourceFailure.elementNotFound()),
        );
      },
    );

    test(
      'should return elementNotFound Failure when firestore returns an empty list of markets',
      () async {
        // arrange
        when(mockTeamRemoteDateSource.get()).thenAnswer(
          (_) async => const Right(
            [
              Team(id: "id1", name: "Spain team", countryIso: "ESP"),
              Team(id: "id2", name: "France team", countryIso: "FRA"),
            ],
          ),
        );
        // act
        final result = await marketRemoteDataSource.get();

        // assert
        expect(
          result,
          const Left(CachedRemoteDataSourceFailure.elementNotFound()),
        );
      },
    );
  });
}
