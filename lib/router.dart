import 'package:auto_route/auto_route.dart';
import 'package:licenta_georgebardas/screens/home_screen/home_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      initial: true,
      page: HomeScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    // CustomRoute(
    //   page: WidgetTest,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),
  ],
)
class $AppRouter {}
