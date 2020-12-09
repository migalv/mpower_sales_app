import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_app/injection.dart';
import 'package:sales_app/presentation/my_app.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await configureInjection(Environment.dev);
  runApp(MyApp());
}
