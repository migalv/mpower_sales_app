import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:sales_app/domain/markets/market.dart';
import 'package:sales_app/domain/settings/document_type.dart';
import 'package:sales_app/domain/settings/settings_repository_failure.dart';

abstract class ISettingRepository {
  /// Will fetch the settings to make them available for later
  Future<Either<SettingsRepositoryFailure, Unit>> fetch();

  /// Will get the List of Document Types available for a certain market
  Either<SettingsRepositoryFailure, List<DocumentType>> getDocumentTypeFor({
    @required Market market,
  });
}
