import 'package:dartz/dartz.dart';
import 'package:sales_app/domain/core/data_sources/cached_remote_data_source_failure.dart';

/// Remote type of data source that caches the latest fetch value from remote
///
/// This makes future gets faster, since it does not have to fetch again
abstract class ICachedRemoteDataSource<T> {
  /// Will fetch from remote first. If fetched already it will return the latest
  Future<Either<CachedRemoteDataSourceFailure, T>> get();

  /// Will clear the cache so it fetches from the server next time
  void clear();
}
