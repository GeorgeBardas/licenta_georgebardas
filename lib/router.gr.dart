// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import 'models/product.dart' as _i11;
import 'screens/admin_screen/admin_add_category_screen/admin_add_category_screen.dart'
    as _i7;
import 'screens/admin_screen/admin_categories_screen/admin_categories_screen.dart'
    as _i6;
import 'screens/admin_screen/admin_screen.dart' as _i5;
import 'screens/home_screen/home_screen.dart' as _i4;
import 'screens/login_screen/login_screen.dart' as _i2;
import 'screens/product_screen/product_screen.dart' as _i8;
import 'screens/register_screen/register_screen.dart' as _i3;
import 'screens/welcome_screen.dart' as _i1;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    WelcomeScreenRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.WelcomeScreen(),
          transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    LoginScreenRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.LoginScreen(),
          transitionsBuilder: _i9.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    RegisterScreenRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.RegisterScreen(),
          transitionsBuilder: _i9.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    HomeScreenRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomeScreen(),
          transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    AdminScreenRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.AdminScreen(),
          transitionsBuilder: _i9.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AdminCategoriesScreenRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.AdminCategoriesScreen(),
          transitionsBuilder: _i9.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AdminAddCategoryScreenRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.AdminAddCategoryScreen(),
          transitionsBuilder: _i9.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    ProductScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProductScreenRouteArgs>();
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: _i8.ProductScreen(product: args.product, key: args.key),
          transitionsBuilder: _i9.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(WelcomeScreenRoute.name, path: '/'),
        _i9.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i9.RouteConfig(RegisterScreenRoute.name, path: '/register-screen'),
        _i9.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i9.RouteConfig(AdminScreenRoute.name, path: '/admin-screen'),
        _i9.RouteConfig(AdminCategoriesScreenRoute.name,
            path: '/admin-categories-screen'),
        _i9.RouteConfig(AdminAddCategoryScreenRoute.name,
            path: '/admin-add-category-screen'),
        _i9.RouteConfig(ProductScreenRoute.name, path: '/product-screen')
      ];
}

/// generated route for
/// [_i1.WelcomeScreen]
class WelcomeScreenRoute extends _i9.PageRouteInfo<void> {
  const WelcomeScreenRoute() : super(WelcomeScreenRoute.name, path: '/');

  static const String name = 'WelcomeScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i9.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(LoginScreenRoute.name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.RegisterScreen]
class RegisterScreenRoute extends _i9.PageRouteInfo<void> {
  const RegisterScreenRoute()
      : super(RegisterScreenRoute.name, path: '/register-screen');

  static const String name = 'RegisterScreenRoute';
}

/// generated route for
/// [_i4.HomeScreen]
class HomeScreenRoute extends _i9.PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i5.AdminScreen]
class AdminScreenRoute extends _i9.PageRouteInfo<void> {
  const AdminScreenRoute()
      : super(AdminScreenRoute.name, path: '/admin-screen');

  static const String name = 'AdminScreenRoute';
}

/// generated route for
/// [_i6.AdminCategoriesScreen]
class AdminCategoriesScreenRoute extends _i9.PageRouteInfo<void> {
  const AdminCategoriesScreenRoute()
      : super(AdminCategoriesScreenRoute.name,
            path: '/admin-categories-screen');

  static const String name = 'AdminCategoriesScreenRoute';
}

/// generated route for
/// [_i7.AdminAddCategoryScreen]
class AdminAddCategoryScreenRoute extends _i9.PageRouteInfo<void> {
  const AdminAddCategoryScreenRoute()
      : super(AdminAddCategoryScreenRoute.name,
            path: '/admin-add-category-screen');

  static const String name = 'AdminAddCategoryScreenRoute';
}

/// generated route for
/// [_i8.ProductScreen]
class ProductScreenRoute extends _i9.PageRouteInfo<ProductScreenRouteArgs> {
  ProductScreenRoute({required _i11.Product product, _i10.Key? key})
      : super(ProductScreenRoute.name,
            path: '/product-screen',
            args: ProductScreenRouteArgs(product: product, key: key));

  static const String name = 'ProductScreenRoute';
}

class ProductScreenRouteArgs {
  const ProductScreenRouteArgs({required this.product, this.key});

  final _i11.Product product;

  final _i10.Key? key;

  @override
  String toString() {
    return 'ProductScreenRouteArgs{product: $product, key: $key}';
  }
}
