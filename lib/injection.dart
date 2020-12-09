import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_app/injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection(String env) {
  return $initGetIt(getIt, environment: env);
}
