// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_add_product_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdminAddProductStateTearOff {
  const _$AdminAddProductStateTearOff();

  _AdminAddProductState call(
      {bool isLoading = false, bool isFormFieldValid = false}) {
    return _AdminAddProductState(
      isLoading: isLoading,
      isFormFieldValid: isFormFieldValid,
    );
  }
}

/// @nodoc
const $AdminAddProductState = _$AdminAddProductStateTearOff();

/// @nodoc
mixin _$AdminAddProductState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFormFieldValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminAddProductStateCopyWith<AdminAddProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminAddProductStateCopyWith<$Res> {
  factory $AdminAddProductStateCopyWith(AdminAddProductState value,
          $Res Function(AdminAddProductState) then) =
      _$AdminAddProductStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isFormFieldValid});
}

/// @nodoc
class _$AdminAddProductStateCopyWithImpl<$Res>
    implements $AdminAddProductStateCopyWith<$Res> {
  _$AdminAddProductStateCopyWithImpl(this._value, this._then);

  final AdminAddProductState _value;
  // ignore: unused_field
  final $Res Function(AdminAddProductState) _then;

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
abstract class _$AdminAddProductStateCopyWith<$Res>
    implements $AdminAddProductStateCopyWith<$Res> {
  factory _$AdminAddProductStateCopyWith(_AdminAddProductState value,
          $Res Function(_AdminAddProductState) then) =
      __$AdminAddProductStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isFormFieldValid});
}

/// @nodoc
class __$AdminAddProductStateCopyWithImpl<$Res>
    extends _$AdminAddProductStateCopyWithImpl<$Res>
    implements _$AdminAddProductStateCopyWith<$Res> {
  __$AdminAddProductStateCopyWithImpl(
      _AdminAddProductState _value, $Res Function(_AdminAddProductState) _then)
      : super(_value, (v) => _then(v as _AdminAddProductState));

  @override
  _AdminAddProductState get _value => super._value as _AdminAddProductState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isFormFieldValid = freezed,
  }) {
    return _then(_AdminAddProductState(
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

class _$_AdminAddProductState implements _AdminAddProductState {
  const _$_AdminAddProductState(
      {this.isLoading = false, this.isFormFieldValid = false});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isFormFieldValid;

  @override
  String toString() {
    return 'AdminAddProductState(isLoading: $isLoading, isFormFieldValid: $isFormFieldValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdminAddProductState &&
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
  _$AdminAddProductStateCopyWith<_AdminAddProductState> get copyWith =>
      __$AdminAddProductStateCopyWithImpl<_AdminAddProductState>(
          this, _$identity);
}

abstract class _AdminAddProductState implements AdminAddProductState {
  const factory _AdminAddProductState({bool isLoading, bool isFormFieldValid}) =
      _$_AdminAddProductState;

  @override
  bool get isLoading;
  @override
  bool get isFormFieldValid;
  @override
  @JsonKey(ignore: true)
  _$AdminAddProductStateCopyWith<_AdminAddProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
