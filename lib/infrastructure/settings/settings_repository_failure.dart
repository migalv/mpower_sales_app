import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_repository_failure.freezed.dart';

@freezed
abstract class SettingsRepositoryFailure with _$SettingsRepositoryFailure {
  /// Failure when an unexpected exception is thrown in the CustomerRepository
  const factory SettingsRepositoryFailure.unexpectedException({
    @required Exception exception,
    @required StackTrace stackTrace,
  }) = UnexpectedException;

  /// Failure when trying to access the settings but they haven't been fetched
  const factory SettingsRepositoryFailure.uninitializedSettings() =
      UninitializedSettings;

  /// Failure when trying to fetch a setting that does not exist
  const factory SettingsRepositoryFailure.settingNotExists({
    /// The key of the not existing setting
    @required String settingKey,
  }) = SettingNotExists;
}
