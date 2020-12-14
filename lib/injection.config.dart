// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'application/auth/auth_bloc.dart';
import 'application/customers/creation/customer_creation_bloc.dart';
import 'infrastructure/customers/dtos/customer_dto.dart';
import 'application/customers/list/customer_list_bloc.dart';
import 'infrastructure/customers/data_sources/customer_local_data_source.dart';
import 'infrastructure/customers/data_sources/customer_remote_data_source.dart';
import 'infrastructure/customers/customer_repository.dart';
import 'infrastructure/customers/customer_upload_service.dart';
import 'infrastructure/auth/firebase_auth_repository.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'infrastructure/core/firestore_unique_id_generator.dart';
import 'domain/auth/i_auth_repository.dart';
import 'domain/customers/i_customer_repository.dart';
import 'domain/core/data_sources/i_data_source.dart';
import 'domain/core/data_sources/i_local_data_source.dart';
import 'domain/core/i_unique_id_generator.dart';
import 'domain/core/services/i_upload_service.dart';
import 'application/auth/login/login_bloc.dart';
import 'infrastructure/core/shared_preferences_injectable_module.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final sharedPreferencesInjectableModule =
      _$SharedPreferencesInjectableModule();
  gh.factory<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.factory<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.factory<FirebaseFunctions>(() => firebaseInjectableModule.cloudFunctions);
  gh.lazySingleton<IAuthRepository>(
      () => FirebaseAuthRepository(get<FirebaseAuth>()));
  gh.lazySingleton<IDataSource<CustomerDTO>>(
      () => CustomerRemoteDataSource(get<FirebaseFirestore>()));
  gh.lazySingleton<IUniqueIdGenerator>(
      () => FirestoreUniqueIdGenerator(get<FirebaseFirestore>()));
  gh.lazySingleton<IUploadService<CustomerDTO>>(
      () => CustomerUploadService(get<FirebaseFunctions>()));
  gh.factory<LoginBloc>(() => LoginBloc(get<IAuthRepository>()));
  final sharedPreferences =
      await sharedPreferencesInjectableModule.sharedPreferences;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthRepository>()));
  gh.lazySingleton<ILocalDataSource<CustomerDTO>>(() => CustomerLocalDataSource(
      get<SharedPreferences>(), get<IUniqueIdGenerator>()));
  gh.lazySingleton<ICustomerRepository>(() => CustomerRepository(
        localDataSource: get<ILocalDataSource<CustomerDTO>>(),
      remoteDataSource: get<IDataSource<CustomerDTO>>()));
  gh.factory<CustomerCreationBloc>(
      () => CustomerCreationBloc(get<ICustomerRepository>()));
  gh.factory<CustomerListBloc>(
      () => CustomerListBloc(get<ICustomerRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}

class _$SharedPreferencesInjectableModule
    extends SharedPreferencesInjectableModule {}
