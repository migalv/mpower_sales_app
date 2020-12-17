import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_app/domain/core/data_sources/cached_remote_data_source_failure.dart';
import 'package:sales_app/domain/core/data_sources/i_cached_remote_data_source.dart';
import 'package:sales_app/domain/profiles/profile.dart';
import 'package:sales_app/domain/teams/team.dart';
import 'package:sales_app/infrastructure/core/firestore_helpers.dart';
import 'package:sales_app/infrastructure/teams/team_dto.dart';

@LazySingleton(as: ICachedRemoteDataSource)
class TeamRemoteDataSource implements ICachedRemoteDataSource<List<Team>> {
  final FirebaseFirestore _firestore;
  final ICachedRemoteDataSource<Profile> _profileRemoteDataSource;
  List<Team> _cachedTeams;

  TeamRemoteDataSource(this._firestore, this._profileRemoteDataSource);

  @override
  Future<Either<CachedRemoteDataSourceFailure, List<Team>>> get() async {
    if (_cachedTeams != null) return Right(_cachedTeams);

    final result = await _profileRemoteDataSource.get();
    final Profile profile = result.getOrElse(() => null);

    if (profile == null) {
      return const Left(
        CachedRemoteDataSourceFailure.insufficientPermissions(),
      );
    }

    try {
      _cachedTeams = [];
      for (final teamId in profile.teamIds) {
        final DocumentSnapshot doc =
            await _firestore.teamsCollection.doc(teamId).get();
        if (doc.exists) {
          _cachedTeams.add(TeamDTO.fromFirestore(doc).toDomain());
        }
      }
    } catch (e) {
      _cachedTeams = null;
      return Left(CachedRemoteDataSourceFailure.serverError(error: e));
    }

    return Right(_cachedTeams);
  }

  @override
  void clear() => _cachedTeams = null;
}
