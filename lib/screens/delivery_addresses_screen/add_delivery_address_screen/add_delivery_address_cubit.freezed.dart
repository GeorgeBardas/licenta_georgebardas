// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_delivery_address_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddDeliveryAddressStateTearOff {
  const _$AddDeliveryAddressStateTearOff();

  _AddDeliveryAddressState call(
      {bool isLoading = false,
      bool isFormValid = false,
      List<County>? counties = null,
      List<City>? cities = null}) {
    return _AddDeliveryAddressState(
      isLoading: isLoading,
      isFormValid: isFormValid,
      counties: counties,
      cities: cities,
    );
  }
}

/// @nodoc
const $AddDeliveryAddressState = _$AddDeliveryAddressStateTearOff();

/// @nodoc
mixin _$AddDeliveryAddressState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFormValid => throw _privateConstructorUsedError;
  List<County>? get counties => throw _privateConstructorUsedError;
  List<City>? get cities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddDeliveryAddressStateCopyWith<AddDeliveryAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDeliveryAddressStateCopyWith<$Res> {
  factory $AddDeliveryAddressStateCopyWith(AddDeliveryAddressState value,
          $Res Function(AddDeliveryAddressState) then) =
      _$AddDeliveryAddressStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isFormValid,
      List<County>? counties,
      List<City>? cities});
}

/// @nodoc
class _$AddDeliveryAddressStateCopyWithImpl<$Res>
    implements $AddDeliveryAddressStateCopyWith<$Res> {
  _$AddDeliveryAddressStateCopyWithImpl(this._value, this._then);

  final AddDeliveryAddressState _value;
  // ignore: unused_field
  final $Res Function(AddDeliveryAddressState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isFormValid = freezed,
    Object? counties = freezed,
    Object? cities = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValid: isFormValid == freezed
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      counties: counties == freezed
          ? _value.counties
          : counties // ignore: cast_nullable_to_non_nullable
              as List<County>?,
      cities: cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>?,
    ));
  }
}

/// @nodoc
abstract class _$AddDeliveryAddressStateCopyWith<$Res>
    implements $AddDeliveryAddressStateCopyWith<$Res> {
  factory _$AddDeliveryAddressStateCopyWith(_AddDeliveryAddressState value,
          $Res Function(_AddDeliveryAddressState) then) =
      __$AddDeliveryAddressStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isFormValid,
      List<County>? counties,
      List<City>? cities});
}

/// @nodoc
class __$AddDeliveryAddressStateCopyWithImpl<$Res>
    extends _$AddDeliveryAddressStateCopyWithImpl<$Res>
    implements _$AddDeliveryAddressStateCopyWith<$Res> {
  __$AddDeliveryAddressStateCopyWithImpl(_AddDeliveryAddressState _value,
      $Res Function(_AddDeliveryAddressState) _then)
      : super(_value, (v) => _then(v as _AddDeliveryAddressState));

  @override
  _AddDeliveryAddressState get _value =>
      super._value as _AddDeliveryAddressState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isFormValid = freezed,
    Object? counties = freezed,
    Object? cities = freezed,
  }) {
    return _then(_AddDeliveryAddressState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValid: isFormValid == freezed
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      counties: counties == freezed
          ? _value.counties
          : counties // ignore: cast_nullable_to_non_nullable
              as List<County>?,
      cities: cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>?,
    ));
  }
}

/// @nodoc

class _$_AddDeliveryAddressState implements _AddDeliveryAddressState {
  const _$_AddDeliveryAddressState(
      {this.isLoading = false,
      this.isFormValid = false,
      this.counties = null,
      this.cities = null});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isFormValid;
  @JsonKey()
  @override
  final List<County>? counties;
  @JsonKey()
  @override
  final List<City>? cities;

  @override
  String toString() {
    return 'AddDeliveryAddressState(isLoading: $isLoading, isFormValid: $isFormValid, counties: $counties, cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddDeliveryAddressState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isFormValid, isFormValid) &&
            const DeepCollectionEquality().equals(other.counties, counties) &&
            const DeepCollectionEquality().equals(other.cities, cities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isFormValid),
      const DeepCollectionEquality().hash(counties),
      const DeepCollectionEquality().hash(cities));

  @JsonKey(ignore: true)
  @override
  _$AddDeliveryAddressStateCopyWith<_AddDeliveryAddressState> get copyWith =>
      __$AddDeliveryAddressStateCopyWithImpl<_AddDeliveryAddressState>(
          this, _$identity);
}

abstract class _AddDeliveryAddressState implements AddDeliveryAddressState {
  const factory _AddDeliveryAddressState(
      {bool isLoading,
      bool isFormValid,
      List<County>? counties,
      List<City>? cities}) = _$_AddDeliveryAddressState;

  @override
  bool get isLoading;
  @override
  bool get isFormValid;
  @override
  List<County>? get counties;
  @override
  List<City>? get cities;
  @override
  @JsonKey(ignore: true)
  _$AddDeliveryAddressStateCopyWith<_AddDeliveryAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}
