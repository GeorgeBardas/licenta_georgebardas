// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;

import 'models/category.dart' as _i21;
import 'models/product.dart' as _i22;
import 'screens/account_details_screen/account_details_screen.dart' as _i11;
import 'screens/admin_screen/admin_add_category_screen/admin_add_category_screen.dart'
    as _i8;
import 'screens/admin_screen/admin_add_product_screen/admin_add_product_screen.dart'
    as _i15;
import 'screens/admin_screen/admin_add_product_screen/admin_product_select_category/admin_product_select_category_screen.dart'
    as _i16;
import 'screens/admin_screen/admin_categories_screen/admin_categories_screen.dart'
    as _i7;
import 'screens/admin_screen/admin_orders_screen/admin_orders_screen.dart'
    as _i17;
import 'screens/admin_screen/admin_products_screen/admin_products_screen.dart'
    as _i9;
import 'screens/admin_screen/admin_screen.dart' as _i6;
import 'screens/admin_screen/admin_statistics_screen/admin_statistics_screen.dart'
    as _i18;
import 'screens/category_products_screen/category_products_screen.dart' as _i5;
import 'screens/delivery_addresses_screen/add_delivery_address_screen/add_delivery_address_screen.dart'
    as _i13;
import 'screens/delivery_addresses_screen/delivery_addresses_screen.dart'
    as _i12;
import 'screens/home_screen/home_screen.dart' as _i4;
import 'screens/login_screen/login_screen.dart' as _i2;
import 'screens/orders_screen/orders_screen.dart' as _i14;
import 'screens/product_screen/product_screen.dart' as _i10;
import 'screens/register_screen/register_screen.dart' as _i3;
import 'screens/welcome_screen.dart' as _i1;

class AppRouter extends _i19.RootStackRouter {
  AppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    WelcomeScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.WelcomeScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    LoginScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.LoginScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    RegisterScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.RegisterScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    HomeScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomeScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    CategoryProductsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryProductsScreenRouteArgs>();
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: _i5.CategoryProductsScreen(
              category: args.category, key: args.key),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AdminScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.AdminScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AdminCategoriesScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.AdminCategoriesScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AdminAddCategoryScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.AdminAddCategoryScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AdminProductsScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.AdminProductsScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    ProductScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProductScreenRouteArgs>();
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: _i10.ProductScreen(product: args.product, key: args.key),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AccountDetailsScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i11.AccountDetailsScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    DeliveryAddressesScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i12.DeliveryAddressesScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AddDeliveryAddressScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i13.AddDeliveryAddressScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    OrdersScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i14.OrdersScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AdminAddProductScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i15.AdminAddProductScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AdminProductSelectCategoryScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i16.AdminProductSelectCategoryScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AdminOrdersScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i17.AdminOrdersScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AdminStatisticsScreenRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i18.AdminStatisticsScreen(),
          transitionsBuilder: _i19.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(WelcomeScreenRoute.name, path: '/'),
        _i19.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i19.RouteConfig(RegisterScreenRoute.name, path: '/register-screen'),
        _i19.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i19.RouteConfig(CategoryProductsScreenRoute.name,
            path: '/category-products-screen'),
        _i19.RouteConfig(AdminScreenRoute.name, path: '/admin-screen'),
        _i19.RouteConfig(AdminCategoriesScreenRoute.name,
            path: '/admin-categories-screen'),
        _i19.RouteConfig(AdminAddCategoryScreenRoute.name,
            path: '/admin-add-category-screen'),
        _i19.RouteConfig(AdminProductsScreenRoute.name,
            path: '/admin-products-screen'),
        _i19.RouteConfig(ProductScreenRoute.name, path: '/product-screen'),
        _i19.RouteConfig(AccountDetailsScreenRoute.name,
            path: '/account-details-screen'),
        _i19.RouteConfig(DeliveryAddressesScreenRoute.name,
            path: '/delivery-addresses-screen'),
        _i19.RouteConfig(AddDeliveryAddressScreenRoute.name,
            path: '/add-delivery-address-screen'),
        _i19.RouteConfig(OrdersScreenRoute.name, path: '/orders-screen'),
        _i19.RouteConfig(AdminAddProductScreenRoute.name,
            path: '/admin-add-product-screen'),
        _i19.RouteConfig(AdminProductSelectCategoryScreenRoute.name,
            path: '/admin-product-select-category-screen'),
        _i19.RouteConfig(AdminOrdersScreenRoute.name,
            path: '/admin-orders-screen'),
        _i19.RouteConfig(AdminStatisticsScreenRoute.name,
            path: '/admin-statistics-screen')
      ];
}

/// generated route for
/// [_i1.WelcomeScreen]
class WelcomeScreenRoute extends _i19.PageRouteInfo<void> {
  const WelcomeScreenRoute() : super(WelcomeScreenRoute.name, path: '/');

  static const String name = 'WelcomeScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i19.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(LoginScreenRoute.name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.RegisterScreen]
class RegisterScreenRoute extends _i19.PageRouteInfo<void> {
  const RegisterScreenRoute()
      : super(RegisterScreenRoute.name, path: '/register-screen');

  static const String name = 'RegisterScreenRoute';
}

/// generated route for
/// [_i4.HomeScreen]
class HomeScreenRoute extends _i19.PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i5.CategoryProductsScreen]
class CategoryProductsScreenRoute
    extends _i19.PageRouteInfo<CategoryProductsScreenRouteArgs> {
  CategoryProductsScreenRoute({required _i21.Category? category, _i20.Key? key})
      : super(CategoryProductsScreenRoute.name,
            path: '/category-products-screen',
            args:
                CategoryProductsScreenRouteArgs(category: category, key: key));

  static const String name = 'CategoryProductsScreenRoute';
}

class CategoryProductsScreenRouteArgs {
  const CategoryProductsScreenRouteArgs({required this.category, this.key});

  final _i21.Category? category;

  final _i20.Key? key;

  @override
  String toString() {
    return 'CategoryProductsScreenRouteArgs{category: $category, key: $key}';
  }
}

/// generated route for
/// [_i6.AdminScreen]
class AdminScreenRoute extends _i19.PageRouteInfo<void> {
  const AdminScreenRoute()
      : super(AdminScreenRoute.name, path: '/admin-screen');

  static const String name = 'AdminScreenRoute';
}

/// generated route for
/// [_i7.AdminCategoriesScreen]
class AdminCategoriesScreenRoute extends _i19.PageRouteInfo<void> {
  const AdminCategoriesScreenRoute()
      : super(AdminCategoriesScreenRoute.name,
            path: '/admin-categories-screen');

  static const String name = 'AdminCategoriesScreenRoute';
}

/// generated route for
/// [_i8.AdminAddCategoryScreen]
class AdminAddCategoryScreenRoute extends _i19.PageRouteInfo<void> {
  const AdminAddCategoryScreenRoute()
      : super(AdminAddCategoryScreenRoute.name,
            path: '/admin-add-category-screen');

  static const String name = 'AdminAddCategoryScreenRoute';
}

/// generated route for
/// [_i9.AdminProductsScreen]
class AdminProductsScreenRoute extends _i19.PageRouteInfo<void> {
  const AdminProductsScreenRoute()
      : super(AdminProductsScreenRoute.name, path: '/admin-products-screen');

  static const String name = 'AdminProductsScreenRoute';
}

/// generated route for
/// [_i10.ProductScreen]
class ProductScreenRoute extends _i19.PageRouteInfo<ProductScreenRouteArgs> {
  ProductScreenRoute({required _i22.Product product, _i20.Key? key})
      : super(ProductScreenRoute.name,
            path: '/product-screen',
            args: ProductScreenRouteArgs(product: product, key: key));

  static const String name = 'ProductScreenRoute';
}

class ProductScreenRouteArgs {
  const ProductScreenRouteArgs({required this.product, this.key});

  final _i22.Product product;

  final _i20.Key? key;

  @override
  String toString() {
    return 'ProductScreenRouteArgs{product: $product, key: $key}';
  }
}

/// generated route for
/// [_i11.AccountDetailsScreen]
class AccountDetailsScreenRoute extends _i19.PageRouteInfo<void> {
  const AccountDetailsScreenRoute()
      : super(AccountDetailsScreenRoute.name, path: '/account-details-screen');

  static const String name = 'AccountDetailsScreenRoute';
}

/// generated route for
/// [_i12.DeliveryAddressesScreen]
class DeliveryAddressesScreenRoute extends _i19.PageRouteInfo<void> {
  const DeliveryAddressesScreenRoute()
      : super(DeliveryAddressesScreenRoute.name,
            path: '/delivery-addresses-screen');

  static const String name = 'DeliveryAddressesScreenRoute';
}

/// generated route for
/// [_i13.AddDeliveryAddressScreen]
class AddDeliveryAddressScreenRoute extends _i19.PageRouteInfo<void> {
  const AddDeliveryAddressScreenRoute()
      : super(AddDeliveryAddressScreenRoute.name,
            path: '/add-delivery-address-screen');

  static const String name = 'AddDeliveryAddressScreenRoute';
}

/// generated route for
/// [_i14.OrdersScreen]
class OrdersScreenRoute extends _i19.PageRouteInfo<void> {
  const OrdersScreenRoute()
      : super(OrdersScreenRoute.name, path: '/orders-screen');

  static const String name = 'OrdersScreenRoute';
}

/// generated route for
/// [_i15.AdminAddProductScreen]
class AdminAddProductScreenRoute extends _i19.PageRouteInfo<void> {
  const AdminAddProductScreenRoute()
      : super(AdminAddProductScreenRoute.name,
            path: '/admin-add-product-screen');

  static const String name = 'AdminAddProductScreenRoute';
}

/// generated route for
/// [_i16.AdminProductSelectCategoryScreen]
class AdminProductSelectCategoryScreenRoute extends _i19.PageRouteInfo<void> {
  const AdminProductSelectCategoryScreenRoute()
      : super(AdminProductSelectCategoryScreenRoute.name,
            path: '/admin-product-select-category-screen');

  static const String name = 'AdminProductSelectCategoryScreenRoute';
}

/// generated route for
/// [_i17.AdminOrdersScreen]
class AdminOrdersScreenRoute extends _i19.PageRouteInfo<void> {
  const AdminOrdersScreenRoute()
      : super(AdminOrdersScreenRoute.name, path: '/admin-orders-screen');

  static const String name = 'AdminOrdersScreenRoute';
}

/// generated route for
/// [_i18.AdminStatisticsScreen]
class AdminStatisticsScreenRoute extends _i19.PageRouteInfo<void> {
  const AdminStatisticsScreenRoute()
      : super(AdminStatisticsScreenRoute.name,
            path: '/admin-statistics-screen');

  static const String name = 'AdminStatisticsScreenRoute';
}
