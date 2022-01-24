import 'package:auto_route/auto_route.dart';
import 'package:licenta_georgebardas/screens/home_screen/home_screen.dart';
import 'package:licenta_georgebardas/screens/login_screen/login_screen.dart';
import 'package:licenta_georgebardas/screens/register_screen/register_screen.dart';
import 'package:licenta_georgebardas/screens/welcome_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      initial: true,
      page: WelcomeScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: LoginScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: RegisterScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: HomeScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ],
)
class $AppRouter {}
