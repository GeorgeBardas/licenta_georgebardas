// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_categories_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdminCategoriesStateTearOff {
  const _$AdminCategoriesStateTearOff();

  _AdminCategoriesState call(
      {bool isLoading = false, List<Category> categories = const []}) {
    return _AdminCategoriesState(
      isLoading: isLoading,
      categories: categories,
    );
  }
}

/// @nodoc
const $AdminCategoriesState = _$AdminCategoriesStateTearOff();

/// @nodoc
mixin _$AdminCategoriesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminCategoriesStateCopyWith<AdminCategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCategoriesStateCopyWith<$Res> {
  factory $AdminCategoriesStateCopyWith(AdminCategoriesState value,
          $Res Function(AdminCategoriesState) then) =
      _$AdminCategoriesStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Category> categories});
}

/// @nodoc
class _$AdminCategoriesStateCopyWithImpl<$Res>
    implements $AdminCategoriesStateCopyWith<$Res> {
  _$AdminCategoriesStateCopyWithImpl(this._value, this._then);

  final AdminCategoriesState _value;
  // ignore: unused_field
  final $Res Function(AdminCategoriesState) _then;

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
abstract class _$AdminCategoriesStateCopyWith<$Res>
    implements $AdminCategoriesStateCopyWith<$Res> {
  factory _$AdminCategoriesStateCopyWith(_AdminCategoriesState value,
          $Res Function(_AdminCategoriesState) then) =
      __$AdminCategoriesStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Category> categories});
}

/// @nodoc
class __$AdminCategoriesStateCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res>
    implements _$AdminCategoriesStateCopyWith<$Res> {
  __$AdminCategoriesStateCopyWithImpl(
      _AdminCategoriesState _value, $Res Function(_AdminCategoriesState) _then)
      : super(_value, (v) => _then(v as _AdminCategoriesState));

  @override
  _AdminCategoriesState get _value => super._value as _AdminCategoriesState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? categories = freezed,
  }) {
    return _then(_AdminCategoriesState(
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

class _$_AdminCategoriesState implements _AdminCategoriesState {
  const _$_AdminCategoriesState(
      {this.isLoading = false, this.categories = const []});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<Category> categories;

  @override
  String toString() {
    return 'AdminCategoriesState(isLoading: $isLoading, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdminCategoriesState &&
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
  _$AdminCategoriesStateCopyWith<_AdminCategoriesState> get copyWith =>
      __$AdminCategoriesStateCopyWithImpl<_AdminCategoriesState>(
          this, _$identity);
}

abstract class _AdminCategoriesState implements AdminCategoriesState {
  const factory _AdminCategoriesState(
      {bool isLoading, List<Category> categories}) = _$_AdminCategoriesState;

  @override
  bool get isLoading;
  @override
  List<Category> get categories;
  @override
  @JsonKey(ignore: true)
  _$AdminCategoriesStateCopyWith<_AdminCategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
