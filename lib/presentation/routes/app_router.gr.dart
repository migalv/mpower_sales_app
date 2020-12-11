// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../customers/creation/customer_creation_page.dart';
import '../customers/list/customer_list_page.dart';
import '../login/login_page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String loginPage = '/login-page';
  static const String customerListPage = '/customer-list-page';
  static const String customerCreationPage = '/customer-creation-page';
  static const all = <String>{
    splashPage,
    loginPage,
    customerListPage,
    customerCreationPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.customerListPage, page: CustomerListPage),
    RouteDef(Routes.customerCreationPage, page: CustomerCreationPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    LoginPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
    CustomerListPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CustomerListPage(),
        settings: data,
      );
    },
    CustomerCreationPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CustomerCreationPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AppRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushLoginPage() => push<dynamic>(Routes.loginPage);

  Future<dynamic> pushCustomerListPage() =>
      push<dynamic>(Routes.customerListPage);

  Future<dynamic> pushCustomerCreationPage() =>
      push<dynamic>(Routes.customerCreationPage);
}
