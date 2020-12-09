import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_app/application/auth/auth_bloc.dart';
import 'package:sales_app/injection.dart';
import 'package:sales_app/presentation/routes/app_router.gr.dart';
import 'package:sales_app/presentation/themes/mpower_basic_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) {
            return getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested());
          },
        ),
      ],
      child: MaterialApp(
        title: 'MPower Sales App',
        builder: ExtendedNavigator.builder<AppRouter>(
          initialRoute: "/",
          router: AppRouter(),
          builder: (context, extendedNav) => Theme(
            data: MPowerBasicTheme().themeData,
            child: extendedNav,
          ),
        ),
      ),
    );
  }
}
