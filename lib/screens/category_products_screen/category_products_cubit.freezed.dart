// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryProductsStateTearOff {
  const _$CategoryProductsStateTearOff();

  _CategoryProductsState call(
      {bool isLoading = false, List<Product> products = const []}) {
    return _CategoryProductsState(
      isLoading: isLoading,
      products: products,
    );
  }
}

/// @nodoc
const $CategoryProductsState = _$CategoryProductsStateTearOff();

/// @nodoc
mixin _$CategoryProductsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryProductsStateCopyWith<CategoryProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductsStateCopyWith<$Res> {
  factory $CategoryProductsStateCopyWith(CategoryProductsState value,
          $Res Function(CategoryProductsState) then) =
      _$CategoryProductsStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Product> products});
}

/// @nodoc
class _$CategoryProductsStateCopyWithImpl<$Res>
    implements $CategoryProductsStateCopyWith<$Res> {
  _$CategoryProductsStateCopyWithImpl(this._value, this._then);

  final CategoryProductsState _value;
  // ignore: unused_field
  final $Res Function(CategoryProductsState) _then;

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
              as List<Product>,
    ));
  }
}

/// @nodoc
abstract class _$CategoryProductsStateCopyWith<$Res>
    implements $CategoryProductsStateCopyWith<$Res> {
  factory _$CategoryProductsStateCopyWith(_CategoryProductsState value,
          $Res Function(_CategoryProductsState) then) =
      __$CategoryProductsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Product> products});
}

/// @nodoc
class __$CategoryProductsStateCopyWithImpl<$Res>
    extends _$CategoryProductsStateCopyWithImpl<$Res>
    implements _$CategoryProductsStateCopyWith<$Res> {
  __$CategoryProductsStateCopyWithImpl(_CategoryProductsState _value,
      $Res Function(_CategoryProductsState) _then)
      : super(_value, (v) => _then(v as _CategoryProductsState));

  @override
  _CategoryProductsState get _value => super._value as _CategoryProductsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? products = freezed,
  }) {
    return _then(_CategoryProductsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_CategoryProductsState implements _CategoryProductsState {
  const _$_CategoryProductsState(
      {this.isLoading = false, this.products = const []});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<Product> products;

  @override
  String toString() {
    return 'CategoryProductsState(isLoading: $isLoading, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryProductsState &&
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
  _$CategoryProductsStateCopyWith<_CategoryProductsState> get copyWith =>
      __$CategoryProductsStateCopyWithImpl<_CategoryProductsState>(
          this, _$identity);
}

abstract class _CategoryProductsState implements CategoryProductsState {
  const factory _CategoryProductsState(
      {bool isLoading, List<Product> products}) = _$_CategoryProductsState;

  @override
  bool get isLoading;
  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$CategoryProductsStateCopyWith<_CategoryProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}
