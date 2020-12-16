import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/core/language_label.dart';

part 'document_type.freezed.dart';
part 'document_type.g.dart';

@freezed
abstract class DocumentType with _$DocumentType {
  const factory DocumentType({
    /// The label to use when showing this DocumentType
    @JsonKey(name: "label") @required LanguageLabel languageLabel,

    /// The key used in the database to represent this DocumentType
    @JsonKey(name: "name") @required String key,

    /// If this DocumentType is required
    @JsonKey(name: "required") @required bool isRequired,
  }) = _DocumentType;

  factory DocumentType.fromJson(Map<String, dynamic> json) =>
      _$DocumentTypeFromJson(json);
}
