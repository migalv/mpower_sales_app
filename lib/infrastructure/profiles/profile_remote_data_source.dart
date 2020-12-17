import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_app/domain/auth/i_auth_repository.dart';
import 'package:sales_app/domain/core/data_sources/cached_remote_data_source_failure.dart';
import 'package:sales_app/domain/core/data_sources/i_cached_remote_data_source.dart';
import 'package:sales_app/domain/profiles/profile.dart';
import 'package:sales_app/infrastructure/core/firestore_helpers.dart';
import 'package:sales_app/infrastructure/profiles/profile_dto.dart';

@LazySingleton(as: ICachedRemoteDataSource)
class ProfileRemoteDataSource implements ICachedRemoteDataSource<Profile> {
  final FirebaseFirestore _firestore;
  final IAuthRepository _authRepository;
  Profile _cachedProfile;

  ProfileRemoteDataSource(this._firestore, this._authRepository);

  @override
  Future<Either<CachedRemoteDataSourceFailure, Profile>> get() async {
    if (_cachedProfile != null) return Right(_cachedProfile);

    final userOption = await _authRepository.signedInUser;
    final user = userOption.getOrElse(() => null);

    if (user == null) {
      return const Left(
        CachedRemoteDataSourceFailure.insufficientPermissions(),
      );
    }

    try {
      final DocumentSnapshot doc =
          await _firestore.profilesCollection.doc(user.uid).get();

      _cachedProfile = ProfileDTO.fromFirestore(doc).toDomain();
    } catch (e) {
      return Left(CachedRemoteDataSourceFailure.serverError(error: e));
    }

    return Right(_cachedProfile);
  }

  @override
  void clear() => _cachedProfile = null;
}
