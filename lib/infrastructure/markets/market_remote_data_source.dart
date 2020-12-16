import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_app/domain/core/data_sources/cached_remote_data_source_failure.dart';
import 'package:sales_app/domain/core/data_sources/i_cached_remote_data_source.dart';
import 'package:sales_app/domain/teams/team.dart';
import 'package:sales_app/infrastructure/markets/market_dto.dart';
import 'package:sales_app/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: ICachedRemoteDataSource)
class MarketRemoteDataSource implements ICachedRemoteDataSource<MarketDTO> {
  final FirebaseFirestore _firestore;
  final ICachedRemoteDataSource<List<Team>> _teamRemoteDataSource;
  MarketDTO _cachedMarket;

  /// Remote data source that uses Firestore to retrieve the Market for the user
  ///
  /// It stores the last fetched market
  MarketRemoteDataSource(this._firestore, this._teamRemoteDataSource);

  @override
  Future<Either<CachedRemoteDataSourceFailure, MarketDTO>> get() async {
    if (_cachedMarket != null) return Right(_cachedMarket);

    final result = await _teamRemoteDataSource.get();

    return result.fold((f) => Left(f), (teams) async {
      if (teams.isEmpty) {
        return const Left(CachedRemoteDataSourceFailure.elementNotFound());
      }

      try {
        final QuerySnapshot snapshot = await _firestore.marketsCollection
            .where("iso", isEqualTo: teams.first.countryIso)
            .get();

        if (snapshot.docs.isNotEmpty) {
          _cachedMarket = MarketDTO.fromFirestore(snapshot.docs.first);
        } else {
          return const Left(CachedRemoteDataSourceFailure.elementNotFound());
        }
      } catch (e) {
        return Left(CachedRemoteDataSourceFailure.serverError(error: e));
      }

      return Right(_cachedMarket);
    });
  }

  @override
  void clear() => _cachedMarket = null;
}
