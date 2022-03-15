// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdminProductsStateTearOff {
  const _$AdminProductsStateTearOff();

  _AdminProductsState call(
      {bool isLoading = false, List<Product>? products = const []}) {
    return _AdminProductsState(
      isLoading: isLoading,
      products: products,
    );
  }
}

/// @nodoc
const $AdminProductsState = _$AdminProductsStateTearOff();

/// @nodoc
mixin _$AdminProductsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminProductsStateCopyWith<AdminProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProductsStateCopyWith<$Res> {
  factory $AdminProductsStateCopyWith(
          AdminProductsState value, $Res Function(AdminProductsState) then) =
      _$AdminProductsStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Product>? products});
}

/// @nodoc
class _$AdminProductsStateCopyWithImpl<$Res>
    implements $AdminProductsStateCopyWith<$Res> {
  _$AdminProductsStateCopyWithImpl(this._value, this._then);

  final AdminProductsState _value;
  // ignore: unused_field
  final $Res Function(AdminProductsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
abstract class _$AdminProductsStateCopyWith<$Res>
    implements $AdminProductsStateCopyWith<$Res> {
  factory _$AdminProductsStateCopyWith(
          _AdminProductsState value, $Res Function(_AdminProductsState) then) =
      __$AdminProductsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Product>? products});
}

/// @nodoc
class __$AdminProductsStateCopyWithImpl<$Res>
    extends _$AdminProductsStateCopyWithImpl<$Res>
    implements _$AdminProductsStateCopyWith<$Res> {
  __$AdminProductsStateCopyWithImpl(
      _AdminProductsState _value, $Res Function(_AdminProductsState) _then)
      : super(_value, (v) => _then(v as _AdminProductsState));

  @override
  _AdminProductsState get _value => super._value as _AdminProductsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? products = freezed,
  }) {
    return _then(_AdminProductsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc

class _$_AdminProductsState implements _AdminProductsState {
  const _$_AdminProductsState(
      {this.isLoading = false, this.products = const []});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<Product>? products;

  @override
  String toString() {
    return 'AdminProductsState(isLoading: $isLoading, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdminProductsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$AdminProductsStateCopyWith<_AdminProductsState> get copyWith =>
      __$AdminProductsStateCopyWithImpl<_AdminProductsState>(this, _$identity);
}

abstract class _AdminProductsState implements AdminProductsState {
  const factory _AdminProductsState({bool isLoading, List<Product>? products}) =
      _$_AdminProductsState;

  @override
  bool get isLoading;
  @override
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$AdminProductsStateCopyWith<_AdminProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}
