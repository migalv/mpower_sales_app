import 'package:flutter/material.dart';
import 'package:sales_app/presentation/login/login_page.dart';
import 'package:sales_app/presentation/themes/mpower_basic_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MPower Sales App',
      theme: MPowerBasicTheme().themeData,
      home: LoginPage(),
    );
  }
}
