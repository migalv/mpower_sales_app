// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'infrastructure/auth/firebase_auth_repository.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_repository.dart';
import 'application/auth/login/login_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<IAuthRepository>(
      () => FirebaseAuthRepository(get<FirebaseAuth>()));
  gh.factory<LoginBloc>(() => LoginBloc(get<IAuthRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
