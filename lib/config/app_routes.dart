import 'package:go_router/go_router.dart';
import 'package:monglish/core/utils/app_constants.dart';
import 'package:monglish/features/home/presentation/screens/home_layout.dart';
import 'package:monglish/features/login/presentation/screens/login_screen.dart';

abstract class Routes {
  static const String loginRoute = "/LoginRoute";
  static const String homeRoute = "/HomeRoute";
}

abstract class AppRoutes {
  static final router = GoRouter(
      initialLocation:
          AppConstants.isUserLoggedIn ? Routes.homeRoute : Routes.loginRoute,
      routes: [
        GoRoute(
            path: Routes.loginRoute,
            name: Routes.loginRoute,
            builder: (context, state) => const LoginScreen()),
        GoRoute(
            path: Routes.homeRoute,
            name: Routes.homeRoute,
            builder: (context, state) => const HomeLayout())
      ]);
}
