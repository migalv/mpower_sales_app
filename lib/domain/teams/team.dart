import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';

@freezed
abstract class Team with _$Team {
  const factory Team({
    @required String id,
    @required String name,
  }) = _Team;
}
