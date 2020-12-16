import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/core/language_label.dart';

part 'document_type_dto.freezed.dart';
part 'document_type_dto.g.dart';

@freezed
abstract class DocumentTypeDTO with _$DocumentTypeDTO {
  const factory DocumentTypeDTO({
    /// The label to use when showing this DocumentType
    @JsonKey(name: "label") @required LanguageLabel languageLabel,

    /// The key used in the database to represent this DocumentType
    @JsonKey(name: "name") @required String key,

    /// If this DocumentType is required
    @JsonKey(name: "required") @required bool isRequired,
  }) = _DocumentTypeDTO;

  factory DocumentTypeDTO.fromJson(Map<String, dynamic> json) =>
      _$DocumentTypeDTOFromJson(json);
}
