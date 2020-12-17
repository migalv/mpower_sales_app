import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_repository_failure.freezed.dart';

@freezed
abstract class SettingsRepositoryFailure
    implements _$SettingsRepositoryFailure {
  const SettingsRepositoryFailure._();

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

  /// Returns a list with the default error messages for each failure
  List<String> get defaultErrorMessages {
    return map(
      unexpectedException: (failure) => [
        "UnexpectedException Failure occured",
        "Exception: ${failure.exception}",
        "StackTrace: ${failure.stackTrace}",
      ],
      uninitializedSettings: (failure) => [
        "UninitializedSettings Failure occured",
        "Fetch the settings first...",
        "If this error is shown, please contact with the software team",
      ],
      settingNotExists: (failure) => [
        "SettingNotExists Failure occurred",
        "Tried to fetch ${failure.settingKey} setting.",
        "This setting does not exist in the data base",
      ],
    );
  }
}
