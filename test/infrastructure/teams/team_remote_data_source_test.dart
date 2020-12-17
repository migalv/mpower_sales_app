import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sales_app/domain/core/data_sources/cached_remote_data_source_failure.dart';
import 'package:sales_app/domain/core/data_sources/i_cached_remote_data_source.dart';
import 'package:sales_app/domain/profiles/profile.dart';
import 'package:sales_app/domain/teams/team.dart';
import 'package:sales_app/infrastructure/teams/team_dto.dart';
import 'package:sales_app/infrastructure/teams/team_remote_data_source.dart';
import 'package:sales_app/infrastructure/core/firestore_helpers.dart';

const String tUserId = "user_id";

class MockProfileRemoteDataSource extends Mock
    implements ICachedRemoteDataSource<Profile> {}

void main() {
  MockFirestoreInstance mockFirestore;
  MockProfileRemoteDataSource mockProfileDS;
  TeamRemoteDataSource teamDataSource;

  const Profile tProfile = Profile(
    id: "id",
    email: "email",
    name: "Test",
    teamIds: ["0", "2", "4", "6"],
  );

  setUp(() {
    mockFirestore = MockFirestoreInstance();
    mockProfileDS = MockProfileRemoteDataSource();
    teamDataSource = TeamRemoteDataSource(
      mockFirestore,
      mockProfileDS,
    );
  });

  group('get', () {
    test(
      'should return an empty list if the user does not participate in any team',
      () async {
        // arrange
        when(mockProfileDS.get())
            .thenAnswer((_) async => const Right(tProfile));

        // act
        final result = await teamDataSource.get();

        // assert
        expect(result.fold(id, id), []);
      },
    );

    test(
      'should return Teams to which the current signed in user participates in',
      () async {
        // arrange
        final List<Team> expectedTeams = [];

        when(mockProfileDS.get())
            .thenAnswer((_) async => const Right(tProfile));

        for (int i = 0; i < 5; i++) {
          final TeamDTO dto = TeamDTO(name: "Team $i", countryIso: "ESP");
          if (i % 2 == 0) {
            await mockFirestore.teamsCollection.doc("$i").set(dto.toJson());
            expectedTeams.add(dto.copyWith(id: "$i").toDomain());
          }
        }

        // act
        final result = await teamDataSource.get();

        // assert
        expect(result.getOrElse(() => null), expectedTeams);
        verify(mockProfileDS.get()).called(1);
      },
    );

    test(
      'should return the previously cached teams from the Data Source',
      () async {
        // arrange
        final List<Team> expectedTeams = [];

        when(mockProfileDS.get())
            .thenAnswer((_) async => const Right(tProfile));

        for (int i = 0; i < 5; i++) {
          final TeamDTO dto = TeamDTO(name: "Team $i", countryIso: "ESP");
          if (i % 2 == 0) {
            await mockFirestore.teamsCollection.doc("$i").set(dto.toJson());
            expectedTeams.add(dto.copyWith(id: "$i").toDomain());
          }
        }

        // act
        var result = await teamDataSource.get();
        await mockFirestore.teamsCollection.add({
          "name": "New added team",
          "participants": [tUserId]
        });
        result = await teamDataSource.get();

        // assert
        expect(result.getOrElse(() => null), expectedTeams);
        verify(mockProfileDS.get()).called(1);
      },
    );
    test(
      'should return InsufficientPermissions when no user is signed in',
      () async {
        // arrange
        when(mockProfileDS.get()).thenAnswer((_) async {
          return const Left(
            CachedRemoteDataSourceFailure.insufficientPermissions(),
          );
        });

        // act
        final result = await teamDataSource.get();
        // assert
        expect(
          result,
          const Left(CachedRemoteDataSourceFailure.insufficientPermissions()),
        );
        verify(mockProfileDS.get()).called(1);
      },
    );
  });
  group('clear', () {
    test(
      'should make the get method refetch Teams from Firestore',
      () async {
        // arrange
        final List<Team> expectedTeams = [];

        when(mockProfileDS.get())
            .thenAnswer((_) async => const Right(tProfile));

        for (int i = 0; i < 5; i++) {
          final TeamDTO dto = TeamDTO(name: "Team $i", countryIso: "ESP");
          if (i % 2 == 0) {
            await mockFirestore.teamsCollection.doc("$i").set(dto.toJson());
            expectedTeams.add(dto.copyWith(id: "$i").toDomain());
          }
        }

        // act
        var result = await teamDataSource.get();
        teamDataSource.clear();
        result = await teamDataSource.get();

        // assert
        expect(result.getOrElse(() => null), expectedTeams);
        verify(mockProfileDS.get()).called(2);
      },
    );

    test(
      'should make the get method refetch the new Teams from Firestore',
      () async {
        // arrange
        final List<Team> expectedTeams = [];

        when(mockProfileDS.get())
            .thenAnswer((_) async => const Right(tProfile));

        for (int i = 0; i < 5; i++) {
          final TeamDTO dto = TeamDTO(name: "Team $i", countryIso: "ESP");
          if (i % 2 == 0) {
            await mockFirestore.teamsCollection.doc("$i").set(dto.toJson());
            expectedTeams.add(dto.copyWith(id: "$i").toDomain());
          }
        }

        // act
        var result = await teamDataSource.get();

        teamDataSource.clear();

        const dto = TeamDTO(name: "New added team", countryIso: "ESP");

        await mockFirestore.teamsCollection.doc("6").set(dto.toJson());
        expectedTeams.add(dto.copyWith(id: "6").toDomain());

        result = await teamDataSource.get();

        // assert
        expect(result.getOrElse(() => null), expectedTeams);
        verify(mockProfileDS.get()).called(2);
      },
    );
  });
}
