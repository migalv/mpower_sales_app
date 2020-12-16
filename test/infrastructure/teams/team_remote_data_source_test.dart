import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sales_app/domain/auth/i_auth_repository.dart';
import 'package:sales_app/domain/core/data_sources/cached_remote_data_source_failure.dart';
import 'package:sales_app/domain/teams/team.dart';
import 'package:sales_app/infrastructure/teams/team_dto.dart';
import 'package:sales_app/infrastructure/teams/team_remote_data_source.dart';
import 'package:sales_app/infrastructure/core/firestore_helpers.dart';

const String tUserId = "user_id";

class MockAuthRepository extends Mock implements IAuthRepository {}

class MockAuthUser extends Mock implements User {
  @override
  String get uid => tUserId;
}

void main() {
  MockFirestoreInstance mockFirestore;
  MockAuthRepository mockAuthRepository;
  TeamRemoteDataSource teamDataSource;

  setUp(() {
    mockFirestore = MockFirestoreInstance();
    mockAuthRepository = MockAuthRepository();
    teamDataSource = TeamRemoteDataSource(
      mockFirestore,
      mockAuthRepository,
    );
  });

  group('get', () {
    test(
      'should return an empty list if the user does not participate in any team',
      () async {
        // arrange
        when(mockAuthRepository.signedInUser)
            .thenAnswer((_) async => optionOf(MockAuthUser()));

        // act
        final result = await teamDataSource.get();

        // assert
        expect(result.getOrElse(() => null), []);
      },
    );

    test(
      'should return Teams to which the current signed in user participates in',
      () async {
        // arrange
        final List<Team> expectedTeams = [];

        when(mockAuthRepository.signedInUser)
            .thenAnswer((_) async => optionOf(MockAuthUser()));

        for (int i = 0; i < 5; i++) {
          final TeamDTO dto = TeamDTO(name: "Team $i", countryIso: "ESP");
          final json = dto.toJson();
          if (i % 2 == 0) {
            json["participants"] = [tUserId];
            final DocumentReference doc =
                await mockFirestore.teamsCollection.add(json);
            expectedTeams.add(dto.copyWith(id: doc.id).toDomain());
          }
        }

        // act
        final result = await teamDataSource.get();

        // assert
        expect(result.getOrElse(() => null), expectedTeams);
        verify(mockAuthRepository.signedInUser).called(1);
      },
    );

    test(
      'should return the previously cached teams from the Data Source',
      () async {
        // arrange
        final List<Team> expectedTeams = [];

        when(mockAuthRepository.signedInUser)
            .thenAnswer((_) async => optionOf(MockAuthUser()));

        for (int i = 0; i < 5; i++) {
          final TeamDTO dto = TeamDTO(name: "Team $i", countryIso: "ESP");
          final json = dto.toJson();
          if (i % 2 == 0) {
            json["participants"] = [tUserId];
            final DocumentReference doc =
                await mockFirestore.teamsCollection.add(json);
            expectedTeams.add(dto.copyWith(id: doc.id).toDomain());
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
        verify(mockAuthRepository.signedInUser).called(1);
      },
    );
    test(
      'should return InsufficientPermissions when no user is signed in',
      () async {
        // arrange
        when(mockAuthRepository.signedInUser)
            .thenAnswer((_) async => optionOf(null));

        // act
        final result = await teamDataSource.get();
        // assert
        expect(
          result,
          const Left(CachedRemoteDataSourceFailure.insufficientPermissions()),
        );
        verify(mockAuthRepository.signedInUser).called(1);
      },
    );
  });
  group('clear', () {
    test(
      'should make the get method refetch Teams from Firestore',
      () async {
        // arrange
        final List<Team> expectedTeams = [];

        when(mockAuthRepository.signedInUser)
            .thenAnswer((_) async => optionOf(MockAuthUser()));

        for (int i = 0; i < 5; i++) {
          final TeamDTO dto = TeamDTO(name: "Team $i", countryIso: "ESP");
          final json = dto.toJson();
          if (i % 2 == 0) {
            json["participants"] = [tUserId];
            final DocumentReference doc =
                await mockFirestore.teamsCollection.add(json);
            expectedTeams.add(dto.copyWith(id: doc.id).toDomain());
          }
        }

        // act
        var result = await teamDataSource.get();
        teamDataSource.clear();
        result = await teamDataSource.get();

        // assert
        expect(result.getOrElse(() => null), expectedTeams);
        verify(mockAuthRepository.signedInUser).called(2);
      },
    );

    test(
      'should make the get method refetch the new Teams from Firestore',
      () async {
        // arrange
        final List<Team> expectedTeams = [];

        when(mockAuthRepository.signedInUser)
            .thenAnswer((_) async => optionOf(MockAuthUser()));

        for (int i = 0; i < 5; i++) {
          final TeamDTO dto = TeamDTO(name: "Team $i", countryIso: "ESP");
          final json = dto.toJson();
          if (i % 2 == 0) {
            json["participants"] = [tUserId];
            final DocumentReference doc =
                await mockFirestore.teamsCollection.add(json);
            expectedTeams.add(dto.copyWith(id: doc.id).toDomain());
          }
        }

        // act
        var result = await teamDataSource.get();

        teamDataSource.clear();

        const dto = TeamDTO(name: "New added team", countryIso: "ESP");
        final json = dto.toJson();
        json["participants"] = [tUserId];

        final DocumentReference doc =
            await mockFirestore.teamsCollection.add(json);
        expectedTeams.add(dto.copyWith(id: doc.id).toDomain());

        result = await teamDataSource.get();

        // assert
        expect(result.getOrElse(() => null), expectedTeams);
        verify(mockAuthRepository.signedInUser).called(2);
      },
    );
  });
}
