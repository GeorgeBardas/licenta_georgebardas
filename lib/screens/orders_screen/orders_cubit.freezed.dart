// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'orders_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrdersStateTearOff {
  const _$OrdersStateTearOff();

  _OrdersState call({bool isLoading = false, List<Purchase>? orders = null}) {
    return _OrdersState(
      isLoading: isLoading,
      orders: orders,
    );
  }
}

/// @nodoc
const $OrdersState = _$OrdersStateTearOff();

/// @nodoc
mixin _$OrdersState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Purchase>? get orders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Purchase>? orders});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res> implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  final OrdersState _value;
  // ignore: unused_field
  final $Res Function(OrdersState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Purchase>?,
    ));
  }
}

/// @nodoc
abstract class _$OrdersStateCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$OrdersStateCopyWith(
          _OrdersState value, $Res Function(_OrdersState) then) =
      __$OrdersStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Purchase>? orders});
}

/// @nodoc
class __$OrdersStateCopyWithImpl<$Res> extends _$OrdersStateCopyWithImpl<$Res>
    implements _$OrdersStateCopyWith<$Res> {
  __$OrdersStateCopyWithImpl(
      _OrdersState _value, $Res Function(_OrdersState) _then)
      : super(_value, (v) => _then(v as _OrdersState));

  @override
  _OrdersState get _value => super._value as _OrdersState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? orders = freezed,
  }) {
    return _then(_OrdersState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Purchase>?,
    ));
  }
}

/// @nodoc

class _$_OrdersState implements _OrdersState {
  const _$_OrdersState({this.isLoading = false, this.orders = null});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<Purchase>? orders;

  @override
  String toString() {
    return 'OrdersState(isLoading: $isLoading, orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrdersState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.orders, orders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(orders));

  @JsonKey(ignore: true)
  @override
  _$OrdersStateCopyWith<_OrdersState> get copyWith =>
      __$OrdersStateCopyWithImpl<_OrdersState>(this, _$identity);
}

abstract class _OrdersState implements OrdersState {
  const factory _OrdersState({bool isLoading, List<Purchase>? orders}) =
      _$_OrdersState;

  @override
  bool get isLoading;
  @override
  List<Purchase>? get orders;
  @override
  @JsonKey(ignore: true)
  _$OrdersStateCopyWith<_OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}
