import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/profiles/profile.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

@freezed
abstract class ProfileDTO with _$ProfileDTO {
  const factory ProfileDTO({
    @JsonKey(ignore: true) String id,
    @required Map<String, dynamic> availableTo,
    @required Map<String, dynamic> teams,
    @required String name,
    @required String email,
  }) = _ProfileDTO;

  /// Transforms a Profile Entity encoded using JSON into a ProfileDTO
  factory ProfileDTO.fromJson(Map<String, dynamic> json) =>
      _$ProfileDTOFromJson(json);

  /// Transforms a Profile Document from Firestore to a ProfileDTO
  factory ProfileDTO.fromFirestore(DocumentSnapshot doc) =>
      ProfileDTO.fromJson(doc.data()).copyWith(id: doc.id);
}

extension ProfileDTOX on ProfileDTO {
  Profile toDomain() => Profile(
        id: id,
        email: email,
        name: name,
        teamIds: availableTo["teams_index"] as List<String>,
      );
}
