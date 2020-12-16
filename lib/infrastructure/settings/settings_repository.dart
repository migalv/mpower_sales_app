import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sales_app/infrastructure/core/firestore_helpers.dart';
import 'package:sales_app/infrastructure/markets/market_dto.dart';
import 'package:sales_app/infrastructure/settings/document_type_dto.dart';
import 'package:sales_app/infrastructure/settings/settings_repository_failure.dart';

@LazySingleton()
class SettingsRepository {
  final FirebaseFirestore _firestore;
  Map<String, DocumentTypeDTO> _documentTypes = {};

  /// Repository that fetches & caches the settings from Firestore
  SettingsRepository(this._firestore);

  Future<Either<SettingsRepositoryFailure, Unit>> fetch() async {
    try {
      for (final setting in Settings.values) {
        final settingKey = settingsKeys[setting.index];
        final snapshot =
            await _firestore.settingsCollection.doc(settingKey).get();

        if (snapshot.exists == false) {
          return Left(
            SettingsRepositoryFailure.settingNotExists(settingKey: settingKey),
          );
        }

        switch (setting) {
          case Settings.documentTypes:
            _documentTypes = snapshot.data().map((key, value) {
              final dto =
                  DocumentTypeDTO.fromJson(value as Map<String, dynamic>);
              return MapEntry(dto.key, dto);
            });
            break;
        }
      }
    } on Exception catch (e, s) {
      final failure = SettingsRepositoryFailure.unexpectedException(
        exception: e,
        stackTrace: s,
      );
      return Left(failure);
    }

    return const Right(unit);
  }

  Either<SettingsRepositoryFailure, List<DocumentTypeDTO>> getDocumentTypeFor({
    @required MarketDTO market,
  }) {
    assert(market != null);

    if (_documentTypes.isEmpty) {
      return const Left(SettingsRepositoryFailure.uninitializedSettings());
    }

    final List<DocumentTypeDTO> dtos =
        market.documentMethods.map((key) => _documentTypes[key]).toList();

    return Right(dtos);
  }

  /// The id of the DocumentTypes document used in Firestore
  static const String documentTypesKey = "document_types";

  static const List<String> settingsKeys = [
    documentTypesKey,
  ];
}

enum Settings {
  documentTypes,
}
