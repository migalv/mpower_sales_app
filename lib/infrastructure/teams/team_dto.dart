import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/teams/team.dart';

part 'team_dto.freezed.dart';
part 'team_dto.g.dart';

@freezed
abstract class TeamDTO with _$TeamDTO {
  const factory TeamDTO({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required String countryIso,
  }) = _TeamDTO;

  /// Transforms a JSON encoded Team into a TeamDTO
  factory TeamDTO.fromJson(Map<String, dynamic> json) =>
      _$TeamDTOFromJson(json);

  /// Transforms a Team Document from Firestore to a TeamDTO
  factory TeamDTO.fromFirestore(DocumentSnapshot doc) =>
      TeamDTO.fromJson(doc.data()).copyWith(id: doc.id);
}

extension TeamDTOX on TeamDTO {
  /// Transforms a TeamDTO into a Team Entity
  Team toDomain() => Team(id: id, name: name, countryIso: countryIso);
}
