import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_label.freezed.dart';
part 'language_label.g.dart';

@freezed
abstract class LanguageLabel with _$LanguageLabel {
  const factory LanguageLabel({
    @required String en,
    String es,
    String fr,
    String pt,
  }) = _LanguageLabel;

  factory LanguageLabel.fromJson(Map<String, dynamic> json) =>
      _$LanguageLabelFromJson(json);
}
