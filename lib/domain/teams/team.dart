import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/i_entity.dart';

part 'team.freezed.dart';

@freezed

/// This represents a team (group of users)
abstract class Team implements _$Team, IEntity {
  const factory Team({
    @required String id,
    @required String name,
  }) = _Team;

  const Team._();

  @override
  List<Object> get props => [id];

  @override
  bool get stringify => false;
}
