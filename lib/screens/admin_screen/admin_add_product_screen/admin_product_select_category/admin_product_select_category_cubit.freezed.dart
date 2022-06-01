// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_product_select_category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdminProductSelectCategoryStateTearOff {
  const _$AdminProductSelectCategoryStateTearOff();

  _AdminProductSelectCategoryState call(
      {bool isLoading = false, List<Category> categories = const []}) {
    return _AdminProductSelectCategoryState(
      isLoading: isLoading,
      categories: categories,
    );
  }
}

/// @nodoc
const $AdminProductSelectCategoryState =
    _$AdminProductSelectCategoryStateTearOff();

/// @nodoc
mixin _$AdminProductSelectCategoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminProductSelectCategoryStateCopyWith<AdminProductSelectCategoryState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProductSelectCategoryStateCopyWith<$Res> {
  factory $AdminProductSelectCategoryStateCopyWith(
          AdminProductSelectCategoryState value,
          $Res Function(AdminProductSelectCategoryState) then) =
      _$AdminProductSelectCategoryStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Category> categories});
}

/// @nodoc
class _$AdminProductSelectCategoryStateCopyWithImpl<$Res>
    implements $AdminProductSelectCategoryStateCopyWith<$Res> {
  _$AdminProductSelectCategoryStateCopyWithImpl(this._value, this._then);

  final AdminProductSelectCategoryState _value;
  // ignore: unused_field
  final $Res Function(AdminProductSelectCategoryState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
abstract class _$AdminProductSelectCategoryStateCopyWith<$Res>
    implements $AdminProductSelectCategoryStateCopyWith<$Res> {
  factory _$AdminProductSelectCategoryStateCopyWith(
          _AdminProductSelectCategoryState value,
          $Res Function(_AdminProductSelectCategoryState) then) =
      __$AdminProductSelectCategoryStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Category> categories});
}

/// @nodoc
class __$AdminProductSelectCategoryStateCopyWithImpl<$Res>
    extends _$AdminProductSelectCategoryStateCopyWithImpl<$Res>
    implements _$AdminProductSelectCategoryStateCopyWith<$Res> {
  __$AdminProductSelectCategoryStateCopyWithImpl(
      _AdminProductSelectCategoryState _value,
      $Res Function(_AdminProductSelectCategoryState) _then)
      : super(_value, (v) => _then(v as _AdminProductSelectCategoryState));

  @override
  _AdminProductSelectCategoryState get _value =>
      super._value as _AdminProductSelectCategoryState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? categories = freezed,
  }) {
    return _then(_AdminProductSelectCategoryState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$_AdminProductSelectCategoryState
    implements _AdminProductSelectCategoryState {
  const _$_AdminProductSelectCategoryState(
      {this.isLoading = false, this.categories = const []});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<Category> categories;

  @override
  String toString() {
    return 'AdminProductSelectCategoryState(isLoading: $isLoading, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdminProductSelectCategoryState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(categories));

  @JsonKey(ignore: true)
  @override
  _$AdminProductSelectCategoryStateCopyWith<_AdminProductSelectCategoryState>
      get copyWith => __$AdminProductSelectCategoryStateCopyWithImpl<
          _AdminProductSelectCategoryState>(this, _$identity);
}

abstract class _AdminProductSelectCategoryState
    implements AdminProductSelectCategoryState {
  const factory _AdminProductSelectCategoryState(
      {bool isLoading,
      List<Category> categories}) = _$_AdminProductSelectCategoryState;

  @override
  bool get isLoading;
  @override
  List<Category> get categories;
  @override
  @JsonKey(ignore: true)
  _$AdminProductSelectCategoryStateCopyWith<_AdminProductSelectCategoryState>
      get copyWith => throw _privateConstructorUsedError;
}
