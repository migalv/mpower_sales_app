import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/i_entity.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed

/// This represents a team (group of users)
abstract class Team with _$Team implements IEntity {
  const factory Team({
    @required String id,
    @required String name,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}
