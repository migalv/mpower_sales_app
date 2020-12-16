import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sales_app/domain/markets/market.dart';
import 'package:sales_app/domain/settings/document_type.dart';
import 'package:sales_app/domain/settings/settings_repository_failure.dart';
import 'package:sales_app/infrastructure/settings/settings_repository.dart';
import 'package:sales_app/infrastructure/core/firestore_helpers.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  MockFirestoreInstance mockFirestore;
  SettingsRepository settingsRepository;

  final Map<String, dynamic> settings =
      jsonFixtureAsMap("settings/settings.json");

  const tMarket = Market(
    name: "Spain",
    currency: "EUR",
    documentMethods: ["dni"],
    iso: "ESP",
    paymentMethods: [0, 1, 2, 3],
  );

  setUp(() {
    mockFirestore = MockFirestoreInstance();
    settingsRepository = SettingsRepository(mockFirestore);
  });

  group('fetch', () {
    test(
      'should correctly fetch the settings from Firestore',
      () async {
        // arrange
        for (final settingKey in SettingsRepository.settingsKeys) {
          await mockFirestore.settingsCollection
              .doc(settingKey)
              .set(settings[settingKey] as Map<String, dynamic>);
        }
        // act
        final result = await settingsRepository.fetch();
        // assert
        expect(result, const Right(unit));
      },
    );

    test(
      'should return SettingNotExists Failure when fetching a not existing setting',
      () async {
        // act
        final result = await settingsRepository.fetch();
        // assert
        expect(result.fold(id, id), isA<SettingsRepositoryFailure>());
      },
    );
  });

  group('getDocumentTypeFor', () {
    test(
      'should return the document types for a given market',
      () async {
        // arrange
        final expected = [
          DocumentType.fromJson(
            settings[SettingsRepository.documentTypesKey]["dni"]
                as Map<String, dynamic>,
          ),
        ];

        for (final settingKey in SettingsRepository.settingsKeys) {
          await mockFirestore.settingsCollection
              .doc(settingKey)
              .set(settings[settingKey] as Map<String, dynamic>);
        }
        // act
        await settingsRepository.fetch();
        final result = settingsRepository.getDocumentTypeFor(market: tMarket);

        // assert
        expect(result.getOrElse(() => null), expected);
      },
    );

    test(
      'should throw an Assertion Error when market is null',
      () async {
        // assert
        expect(
          () => settingsRepository.getDocumentTypeFor(market: null),
          throwsAssertionError,
        );
      },
    );

    test(
      'should return UninitializedSettings Failure when Repository has not fetched the settings ',
      () async {
        // act
        final result = settingsRepository.getDocumentTypeFor(market: tMarket);
        // assert
        expect(result,
            const Left(SettingsRepositoryFailure.uninitializedSettings()));
      },
    );
  });
}
