import 'package:auto_route/auto_route.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_app/application/auth/auth_bloc.dart';
import 'package:sales_app/presentation/core/dialogs/failure_dialog.dart';
import 'package:sales_app/presentation/routes/app_router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          waiting: () {},
          authenticationError: (errorMessages) {
            showDialog(
              context: context,
              builder: (_) => FailureDialog(messages: errorMessages),
            );
          },
          authenticated: (user) {
            context.navigator.popAndPush(Routes.customerListPage);
          },
          unauthenticated: () {
            context.navigator.popAndPush(Routes.loginPage);
          },
        );
      },
      child: SplashScreen.callback(
        name: "assets/animations/loading_mpower_logo_gray.flr",
        loopAnimation: 'Loading',
        backgroundColor: Colors.white,
        height: 64,
        width: 64,
        isLoading: true,
        onSuccess: (_) {},
        onError: (_, __) {},
      ),
    );
  }
}
