import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_app/domain/auth/i_auth_repository.dart';
import 'package:sales_app/domain/core/data_sources/cached_remote_data_source_failure.dart';
import 'package:sales_app/domain/core/data_sources/i_cached_remote_data_source.dart';
import 'package:sales_app/domain/teams/team.dart';
import 'package:sales_app/infrastructure/core/firestore_helpers.dart';
import 'package:sales_app/infrastructure/teams/team_dto.dart';

@LazySingleton(as: ICachedRemoteDataSource)
class TeamRemoteDataSource implements ICachedRemoteDataSource<List<Team>> {
  final FirebaseFirestore _firestore;
  final IAuthRepository _authRepository;
  List<Team> _cachedTeams;

  TeamRemoteDataSource(this._firestore, this._authRepository);

  @override
  Future<Either<CachedRemoteDataSourceFailure, List<Team>>> get() async {
    if (_cachedTeams != null) return Right(_cachedTeams);

    final userOption = await _authRepository.signedInUser;
    final user = userOption.getOrElse(() => null);

    if (user == null) {
      return const Left(
        CachedRemoteDataSourceFailure.insufficientPermissions(),
      );
    }

    try {
      final QuerySnapshot snapshots = await _firestore.teamsCollection
          .where("participants", arrayContains: user.uid)
          .get();

      _cachedTeams = snapshots.docs
          .map((doc) => TeamDTO.fromFirestore(doc).toDomain())
          .toList();
    } catch (e) {
      return Left(CachedRemoteDataSourceFailure.serverError(error: e));
    }

    return Right(_cachedTeams);
  }

  @override
  void clear() => _cachedTeams = null;
}
