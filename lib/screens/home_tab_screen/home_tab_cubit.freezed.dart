// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_tab_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeTabStateTearOff {
  const _$HomeTabStateTearOff();

  _HomeTabState call(
      {bool isLoading = false, List<Product> products = const []}) {
    return _HomeTabState(
      isLoading: isLoading,
      products: products,
    );
  }
}

/// @nodoc
const $HomeTabState = _$HomeTabStateTearOff();

/// @nodoc
mixin _$HomeTabState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeTabStateCopyWith<HomeTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTabStateCopyWith<$Res> {
  factory $HomeTabStateCopyWith(
          HomeTabState value, $Res Function(HomeTabState) then) =
      _$HomeTabStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Product> products});
}

/// @nodoc
class _$HomeTabStateCopyWithImpl<$Res> implements $HomeTabStateCopyWith<$Res> {
  _$HomeTabStateCopyWithImpl(this._value, this._then);

  final HomeTabState _value;
  // ignore: unused_field
  final $Res Function(HomeTabState) _then;

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
abstract class _$HomeTabStateCopyWith<$Res>
    implements $HomeTabStateCopyWith<$Res> {
  factory _$HomeTabStateCopyWith(
          _HomeTabState value, $Res Function(_HomeTabState) then) =
      __$HomeTabStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Product> products});
}

/// @nodoc
class __$HomeTabStateCopyWithImpl<$Res> extends _$HomeTabStateCopyWithImpl<$Res>
    implements _$HomeTabStateCopyWith<$Res> {
  __$HomeTabStateCopyWithImpl(
      _HomeTabState _value, $Res Function(_HomeTabState) _then)
      : super(_value, (v) => _then(v as _HomeTabState));

  @override
  _HomeTabState get _value => super._value as _HomeTabState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? products = freezed,
  }) {
    return _then(_HomeTabState(
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

class _$_HomeTabState implements _HomeTabState {
  const _$_HomeTabState({this.isLoading = false, this.products = const []});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<Product> products;

  @override
  String toString() {
    return 'HomeTabState(isLoading: $isLoading, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeTabState &&
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
  _$HomeTabStateCopyWith<_HomeTabState> get copyWith =>
      __$HomeTabStateCopyWithImpl<_HomeTabState>(this, _$identity);
}

abstract class _HomeTabState implements HomeTabState {
  const factory _HomeTabState({bool isLoading, List<Product> products}) =
      _$_HomeTabState;

  @override
  bool get isLoading;
  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$HomeTabStateCopyWith<_HomeTabState> get copyWith =>
      throw _privateConstructorUsedError;
}
