// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delivery_addresses_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeliveryAddressesStateTearOff {
  const _$DeliveryAddressesStateTearOff();

  _DeliveryAddressesState call(
      {bool isLoading = false, List<String>? addresses = null}) {
    return _DeliveryAddressesState(
      isLoading: isLoading,
      addresses: addresses,
    );
  }
}

/// @nodoc
const $DeliveryAddressesState = _$DeliveryAddressesStateTearOff();

/// @nodoc
mixin _$DeliveryAddressesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<String>? get addresses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryAddressesStateCopyWith<DeliveryAddressesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAddressesStateCopyWith<$Res> {
  factory $DeliveryAddressesStateCopyWith(DeliveryAddressesState value,
          $Res Function(DeliveryAddressesState) then) =
      _$DeliveryAddressesStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<String>? addresses});
}

/// @nodoc
class _$DeliveryAddressesStateCopyWithImpl<$Res>
    implements $DeliveryAddressesStateCopyWith<$Res> {
  _$DeliveryAddressesStateCopyWithImpl(this._value, this._then);

  final DeliveryAddressesState _value;
  // ignore: unused_field
  final $Res Function(DeliveryAddressesState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? addresses = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addresses: addresses == freezed
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryAddressesStateCopyWith<$Res>
    implements $DeliveryAddressesStateCopyWith<$Res> {
  factory _$DeliveryAddressesStateCopyWith(_DeliveryAddressesState value,
          $Res Function(_DeliveryAddressesState) then) =
      __$DeliveryAddressesStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<String>? addresses});
}

/// @nodoc
class __$DeliveryAddressesStateCopyWithImpl<$Res>
    extends _$DeliveryAddressesStateCopyWithImpl<$Res>
    implements _$DeliveryAddressesStateCopyWith<$Res> {
  __$DeliveryAddressesStateCopyWithImpl(_DeliveryAddressesState _value,
      $Res Function(_DeliveryAddressesState) _then)
      : super(_value, (v) => _then(v as _DeliveryAddressesState));

  @override
  _DeliveryAddressesState get _value => super._value as _DeliveryAddressesState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? addresses = freezed,
  }) {
    return _then(_DeliveryAddressesState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addresses: addresses == freezed
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_DeliveryAddressesState implements _DeliveryAddressesState {
  const _$_DeliveryAddressesState(
      {this.isLoading = false, this.addresses = null});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<String>? addresses;

  @override
  String toString() {
    return 'DeliveryAddressesState(isLoading: $isLoading, addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliveryAddressesState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.addresses, addresses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(addresses));

  @JsonKey(ignore: true)
  @override
  _$DeliveryAddressesStateCopyWith<_DeliveryAddressesState> get copyWith =>
      __$DeliveryAddressesStateCopyWithImpl<_DeliveryAddressesState>(
          this, _$identity);
}

abstract class _DeliveryAddressesState implements DeliveryAddressesState {
  const factory _DeliveryAddressesState(
      {bool isLoading, List<String>? addresses}) = _$_DeliveryAddressesState;

  @override
  bool get isLoading;
  @override
  List<String>? get addresses;
  @override
  @JsonKey(ignore: true)
  _$DeliveryAddressesStateCopyWith<_DeliveryAddressesState> get copyWith =>
      throw _privateConstructorUsedError;
}
