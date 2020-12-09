import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_app/application/auth/auth_bloc.dart';
import 'package:sales_app/presentation/routes/app_router.gr.dart';

/// Button when pressed it will log out the current user
class LogOutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          waiting: () {},
          authenticated: (user) {},
          unauthenticated: () {
            context.navigator.popAndPush(Routes.loginPage);
          },
        );
      },
      builder: (context, state) {
        Widget widget;

        state.when(
          waiting: () {
            widget = Center(
              child: Container(
                margin: const EdgeInsets.all(8.0),
                child: const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            );
          },
          authenticated: (user) {
            widget = IconButton(
              onPressed: () => context
                  .read<AuthBloc>()
                  .add(const AuthEvent.signOutRequested()),
              icon: const Icon(Icons.logout),
            );
          },
          unauthenticated: () {
            widget = const Icon(Icons.logout);
          },
        );

        return widget;
      },
    );
  }
}
