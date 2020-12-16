import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sales_app/domain/markets/market.dart';
import 'package:sales_app/domain/settings/document_type.dart';
import 'package:sales_app/domain/settings/i_settings_repository.dart';
import 'package:sales_app/domain/settings/settings_repository_failure.dart';
import 'package:sales_app/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: ISettingRepository)
class SettingsRepository implements ISettingRepository {
  final FirebaseFirestore _firestore;
  Map<String, DocumentType> _documentTypes = {};

  /// Repository that fetches & caches the settings from Firestore
  SettingsRepository(this._firestore);

  @override
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
              final documentType =
                  DocumentType.fromJson(value as Map<String, dynamic>);
              return MapEntry(documentType.key, documentType);
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

  @override
  Either<SettingsRepositoryFailure, List<DocumentType>> getDocumentTypeFor({
    @required Market market,
  }) {
    assert(market != null);

    if (_documentTypes.isEmpty) {
      return const Left(SettingsRepositoryFailure.uninitializedSettings());
    }

    final List<DocumentType> documentTypes =
        market.documentMethods.map((key) => _documentTypes[key]).toList();

    return Right(documentTypes);
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
