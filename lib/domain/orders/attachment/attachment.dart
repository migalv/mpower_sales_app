import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment.freezed.dart';

@freezed

/// Represents a file that was attached to an order
abstract class Attachment with _$Attachment {
  const factory Attachment({
    /// The label that represents the attachment
    @required String label,

    /// The key/name of the attachment (for database purposes)
    @required String name,

    /// The url of the file were the attachment has been saved
    @required String url,
  }) = _Attachment;
}
