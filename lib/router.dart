import 'package:auto_route/auto_route.dart';
import 'package:licenta_georgebardas/screens/account_details_screen/account_details_screen.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_add_category_screen/admin_add_category_screen.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_add_product_screen/admin_add_product_screen.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_add_product_screen/admin_product_select_category/admin_product_select_category_screen.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_categories_screen/admin_categories_screen.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_orders_screen/admin_orders_screen.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_products_screen/admin_products_screen.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_screen.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_statistics_screen/admin_statistics_screen.dart';
import 'package:licenta_georgebardas/screens/category_products_screen/category_products_screen.dart';
import 'package:licenta_georgebardas/screens/delivery_addresses_screen/add_delivery_address_screen/add_delivery_address_screen.dart';
import 'package:licenta_georgebardas/screens/delivery_addresses_screen/delivery_addresses_screen.dart';
import 'package:licenta_georgebardas/screens/home_screen/home_screen.dart';
import 'package:licenta_georgebardas/screens/login_screen/login_screen.dart';
import 'package:licenta_georgebardas/screens/orders_screen/orders_screen.dart';
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
      transitionsBuilder: TransitionsBuilders.slideLeft,
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
    CustomRoute(
      page: AccountDetailsScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: DeliveryAddressesScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: AddDeliveryAddressScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: OrdersScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: AdminAddProductScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: AdminProductSelectCategoryScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: AdminOrdersScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: AdminStatisticsScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
  ],
)
class $AppRouter {}
