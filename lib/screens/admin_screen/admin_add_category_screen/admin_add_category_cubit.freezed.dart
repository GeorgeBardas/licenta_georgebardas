// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_add_category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdminAddCategoryStateTearOff {
  const _$AdminAddCategoryStateTearOff();

  _AdminAddCategoryState call(
      {bool isLoading = false, bool isFormFieldValid = false}) {
    return _AdminAddCategoryState(
      isLoading: isLoading,
      isFormFieldValid: isFormFieldValid,
    );
  }
}

/// @nodoc
const $AdminAddCategoryState = _$AdminAddCategoryStateTearOff();

/// @nodoc
mixin _$AdminAddCategoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFormFieldValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminAddCategoryStateCopyWith<AdminAddCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminAddCategoryStateCopyWith<$Res> {
  factory $AdminAddCategoryStateCopyWith(AdminAddCategoryState value,
          $Res Function(AdminAddCategoryState) then) =
      _$AdminAddCategoryStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isFormFieldValid});
}

/// @nodoc
class _$AdminAddCategoryStateCopyWithImpl<$Res>
    implements $AdminAddCategoryStateCopyWith<$Res> {
  _$AdminAddCategoryStateCopyWithImpl(this._value, this._then);

  final AdminAddCategoryState _value;
  // ignore: unused_field
  final $Res Function(AdminAddCategoryState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isFormFieldValid = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormFieldValid: isFormFieldValid == freezed
          ? _value.isFormFieldValid
          : isFormFieldValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AdminAddCategoryStateCopyWith<$Res>
    implements $AdminAddCategoryStateCopyWith<$Res> {
  factory _$AdminAddCategoryStateCopyWith(_AdminAddCategoryState value,
          $Res Function(_AdminAddCategoryState) then) =
      __$AdminAddCategoryStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isFormFieldValid});
}

/// @nodoc
class __$AdminAddCategoryStateCopyWithImpl<$Res>
    extends _$AdminAddCategoryStateCopyWithImpl<$Res>
    implements _$AdminAddCategoryStateCopyWith<$Res> {
  __$AdminAddCategoryStateCopyWithImpl(_AdminAddCategoryState _value,
      $Res Function(_AdminAddCategoryState) _then)
      : super(_value, (v) => _then(v as _AdminAddCategoryState));

  @override
  _AdminAddCategoryState get _value => super._value as _AdminAddCategoryState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isFormFieldValid = freezed,
  }) {
    return _then(_AdminAddCategoryState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormFieldValid: isFormFieldValid == freezed
          ? _value.isFormFieldValid
          : isFormFieldValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AdminAddCategoryState implements _AdminAddCategoryState {
  const _$_AdminAddCategoryState(
      {this.isLoading = false, this.isFormFieldValid = false});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isFormFieldValid;

  @override
  String toString() {
    return 'AdminAddCategoryState(isLoading: $isLoading, isFormFieldValid: $isFormFieldValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdminAddCategoryState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isFormFieldValid, isFormFieldValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isFormFieldValid));

  @JsonKey(ignore: true)
  @override
  _$AdminAddCategoryStateCopyWith<_AdminAddCategoryState> get copyWith =>
      __$AdminAddCategoryStateCopyWithImpl<_AdminAddCategoryState>(
          this, _$identity);
}

abstract class _AdminAddCategoryState implements AdminAddCategoryState {
  const factory _AdminAddCategoryState(
      {bool isLoading, bool isFormFieldValid}) = _$_AdminAddCategoryState;

  @override
  bool get isLoading;
  @override
  bool get isFormFieldValid;
  @override
  @JsonKey(ignore: true)
  _$AdminAddCategoryStateCopyWith<_AdminAddCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
