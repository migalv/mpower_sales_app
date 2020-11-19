import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment.freezed.dart';

@freezed
abstract class Attachment with _$Attachment {
  const factory Attachment({
    @required String label,
    @required String name,
    @required String url,
  }) = _Attachment;
}
