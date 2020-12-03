import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class SharedPreferencesInjectableModule {
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}
