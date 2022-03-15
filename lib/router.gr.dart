// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import 'models/category.dart' as _i13;
import 'models/product.dart' as _i14;
import 'screens/admin_screen/admin_add_category_screen/admin_add_category_screen.dart'
    as _i8;
import 'screens/admin_screen/admin_categories_screen/admin_categories_screen.dart'
    as _i7;
import 'screens/admin_screen/admin_products_screen/admin_products_screen.dart'
    as _i9;
import 'screens/admin_screen/admin_screen.dart' as _i6;
import 'screens/category_products_screen/category_products_screen.dart' as _i5;
import 'screens/home_screen/home_screen.dart' as _i4;
import 'screens/login_screen/login_screen.dart' as _i2;
import 'screens/product_screen/product_screen.dart' as _i10;
import 'screens/register_screen/register_screen.dart' as _i3;
import 'screens/welcome_screen.dart' as _i1;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    WelcomeScreenRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.WelcomeScreen(),
          transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    LoginScreenRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.LoginScreen(),
          transitionsBuilder: _i11.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    RegisterScreenRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.RegisterScreen(),
          transitionsBuilder: _i11.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    HomeScreenRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomeScreen(),
          transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    CategoryProductsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryProductsScreenRouteArgs>();
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: _i5.CategoryProductsScreen(
              category: args.category, key: args.key),
          transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    AdminScreenRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.AdminScreen(),
          transitionsBuilder: _i11.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AdminCategoriesScreenRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.AdminCategoriesScreen(),
          transitionsBuilder: _i11.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AdminAddCategoryScreenRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.AdminAddCategoryScreen(),
          transitionsBuilder: _i11.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AdminProductsScreenRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.AdminProductsScreen(),
          transitionsBuilder: _i11.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    ProductScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProductScreenRouteArgs>();
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: _i10.ProductScreen(product: args.product, key: args.key),
          transitionsBuilder: _i11.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(WelcomeScreenRoute.name, path: '/'),
        _i11.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i11.RouteConfig(RegisterScreenRoute.name, path: '/register-screen'),
        _i11.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i11.RouteConfig(CategoryProductsScreenRoute.name,
            path: '/category-products-screen'),
        _i11.RouteConfig(AdminScreenRoute.name, path: '/admin-screen'),
        _i11.RouteConfig(AdminCategoriesScreenRoute.name,
            path: '/admin-categories-screen'),
        _i11.RouteConfig(AdminAddCategoryScreenRoute.name,
            path: '/admin-add-category-screen'),
        _i11.RouteConfig(AdminProductsScreenRoute.name,
            path: '/admin-products-screen'),
        _i11.RouteConfig(ProductScreenRoute.name, path: '/product-screen')
      ];
}

/// generated route for
/// [_i1.WelcomeScreen]
class WelcomeScreenRoute extends _i11.PageRouteInfo<void> {
  const WelcomeScreenRoute() : super(WelcomeScreenRoute.name, path: '/');

  static const String name = 'WelcomeScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i11.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(LoginScreenRoute.name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.RegisterScreen]
class RegisterScreenRoute extends _i11.PageRouteInfo<void> {
  const RegisterScreenRoute()
      : super(RegisterScreenRoute.name, path: '/register-screen');

  static const String name = 'RegisterScreenRoute';
}

/// generated route for
/// [_i4.HomeScreen]
class HomeScreenRoute extends _i11.PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i5.CategoryProductsScreen]
class CategoryProductsScreenRoute
    extends _i11.PageRouteInfo<CategoryProductsScreenRouteArgs> {
  CategoryProductsScreenRoute({required _i13.Category? category, _i12.Key? key})
      : super(CategoryProductsScreenRoute.name,
            path: '/category-products-screen',
            args:
                CategoryProductsScreenRouteArgs(category: category, key: key));

  static const String name = 'CategoryProductsScreenRoute';
}

class CategoryProductsScreenRouteArgs {
  const CategoryProductsScreenRouteArgs({required this.category, this.key});

  final _i13.Category? category;

  final _i12.Key? key;

  @override
  String toString() {
    return 'CategoryProductsScreenRouteArgs{category: $category, key: $key}';
  }
}

/// generated route for
/// [_i6.AdminScreen]
class AdminScreenRoute extends _i11.PageRouteInfo<void> {
  const AdminScreenRoute()
      : super(AdminScreenRoute.name, path: '/admin-screen');

  static const String name = 'AdminScreenRoute';
}

/// generated route for
/// [_i7.AdminCategoriesScreen]
class AdminCategoriesScreenRoute extends _i11.PageRouteInfo<void> {
  const AdminCategoriesScreenRoute()
      : super(AdminCategoriesScreenRoute.name,
            path: '/admin-categories-screen');

  static const String name = 'AdminCategoriesScreenRoute';
}

/// generated route for
/// [_i8.AdminAddCategoryScreen]
class AdminAddCategoryScreenRoute extends _i11.PageRouteInfo<void> {
  const AdminAddCategoryScreenRoute()
      : super(AdminAddCategoryScreenRoute.name,
            path: '/admin-add-category-screen');

  static const String name = 'AdminAddCategoryScreenRoute';
}

/// generated route for
/// [_i9.AdminProductsScreen]
class AdminProductsScreenRoute extends _i11.PageRouteInfo<void> {
  const AdminProductsScreenRoute()
      : super(AdminProductsScreenRoute.name, path: '/admin-products-screen');

  static const String name = 'AdminProductsScreenRoute';
}

/// generated route for
/// [_i10.ProductScreen]
class ProductScreenRoute extends _i11.PageRouteInfo<ProductScreenRouteArgs> {
  ProductScreenRoute({required _i14.Product product, _i12.Key? key})
      : super(ProductScreenRoute.name,
            path: '/product-screen',
            args: ProductScreenRouteArgs(product: product, key: key));

  static const String name = 'ProductScreenRoute';
}

class ProductScreenRouteArgs {
  const ProductScreenRouteArgs({required this.product, this.key});

  final _i14.Product product;

  final _i12.Key? key;

  @override
  String toString() {
    return 'ProductScreenRouteArgs{product: $product, key: $key}';
  }
}
