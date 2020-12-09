import 'package:auto_route/auto_route_annotations.dart';
import 'package:sales_app/presentation/customers/list/customer_list_page.dart';
import 'package:sales_app/presentation/login/login_page.dart';
import 'package:sales_app/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: LoginPage),
    MaterialRoute(page: CustomerListPage),
  ],
  generateNavigationHelperExtension: true,
)
class $AppRouter {}
