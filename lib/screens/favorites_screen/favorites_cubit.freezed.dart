// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorites_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoritesStateTearOff {
  const _$FavoritesStateTearOff();

  _FavoritesState call(
      {bool isLoading = false, List<Product> favoritesProducts = const []}) {
    return _FavoritesState(
      isLoading: isLoading,
      favoritesProducts: favoritesProducts,
    );
  }
}

/// @nodoc
const $FavoritesState = _$FavoritesStateTearOff();

/// @nodoc
mixin _$FavoritesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Product> get favoritesProducts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesStateCopyWith<FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Product> favoritesProducts});
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  final FavoritesState _value;
  // ignore: unused_field
  final $Res Function(FavoritesState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? favoritesProducts = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesProducts: favoritesProducts == freezed
          ? _value.favoritesProducts
          : favoritesProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
abstract class _$FavoritesStateCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$FavoritesStateCopyWith(
          _FavoritesState value, $Res Function(_FavoritesState) then) =
      __$FavoritesStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Product> favoritesProducts});
}

/// @nodoc
class __$FavoritesStateCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res>
    implements _$FavoritesStateCopyWith<$Res> {
  __$FavoritesStateCopyWithImpl(
      _FavoritesState _value, $Res Function(_FavoritesState) _then)
      : super(_value, (v) => _then(v as _FavoritesState));

  @override
  _FavoritesState get _value => super._value as _FavoritesState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? favoritesProducts = freezed,
  }) {
    return _then(_FavoritesState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesProducts: favoritesProducts == freezed
          ? _value.favoritesProducts
          : favoritesProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_FavoritesState implements _FavoritesState {
  const _$_FavoritesState(
      {this.isLoading = false, this.favoritesProducts = const []});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<Product> favoritesProducts;

  @override
  String toString() {
    return 'FavoritesState(isLoading: $isLoading, favoritesProducts: $favoritesProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavoritesState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.favoritesProducts, favoritesProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(favoritesProducts));

  @JsonKey(ignore: true)
  @override
  _$FavoritesStateCopyWith<_FavoritesState> get copyWith =>
      __$FavoritesStateCopyWithImpl<_FavoritesState>(this, _$identity);
}

abstract class _FavoritesState implements FavoritesState {
  const factory _FavoritesState(
      {bool isLoading, List<Product> favoritesProducts}) = _$_FavoritesState;

  @override
  bool get isLoading;
  @override
  List<Product> get favoritesProducts;
  @override
  @JsonKey(ignore: true)
  _$FavoritesStateCopyWith<_FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}
