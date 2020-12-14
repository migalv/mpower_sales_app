import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/teams/failures/team_repository_failure.dart';
import 'package:sales_app/domain/teams/team/team.dart';

/// Specifies a contract for a repository that handles Teams
abstract class ITeamRepository {
  /// Stream that emits the teams which the current user is part of
  Future<Either<TeamRepositoryFailure, List<Team>>> get userTeams;
}
