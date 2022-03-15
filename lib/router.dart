import 'package:auto_route/auto_route.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_add_category_screen/admin_add_category_screen.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_categories_screen/admin_categories_screen.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_products_screen/admin_products_screen.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_screen.dart';
import 'package:licenta_georgebardas/screens/category_products_screen/category_products_screen.dart';
import 'package:licenta_georgebardas/screens/home_screen/home_screen.dart';
import 'package:licenta_georgebardas/screens/login_screen/login_screen.dart';
import 'package:licenta_georgebardas/screens/product_screen/product_screen.dart';
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
    CustomRoute(
      page: CategoryProductsScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: AdminScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: AdminCategoriesScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: AdminAddCategoryScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: AdminProductsScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: ProductScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
  ],
)
class $AppRouter {}
