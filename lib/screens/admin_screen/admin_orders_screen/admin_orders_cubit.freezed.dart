// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_orders_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdminOrdersStateTearOff {
  const _$AdminOrdersStateTearOff();

  _AdminOrdersState call(
      {bool isLoading = false, List<Purchase>? orders = null}) {
    return _AdminOrdersState(
      isLoading: isLoading,
      orders: orders,
    );
  }
}

/// @nodoc
const $AdminOrdersState = _$AdminOrdersStateTearOff();

/// @nodoc
mixin _$AdminOrdersState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Purchase>? get orders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminOrdersStateCopyWith<AdminOrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminOrdersStateCopyWith<$Res> {
  factory $AdminOrdersStateCopyWith(
          AdminOrdersState value, $Res Function(AdminOrdersState) then) =
      _$AdminOrdersStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Purchase>? orders});
}

/// @nodoc
class _$AdminOrdersStateCopyWithImpl<$Res>
    implements $AdminOrdersStateCopyWith<$Res> {
  _$AdminOrdersStateCopyWithImpl(this._value, this._then);

  final AdminOrdersState _value;
  // ignore: unused_field
  final $Res Function(AdminOrdersState) _then;

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
abstract class _$AdminOrdersStateCopyWith<$Res>
    implements $AdminOrdersStateCopyWith<$Res> {
  factory _$AdminOrdersStateCopyWith(
          _AdminOrdersState value, $Res Function(_AdminOrdersState) then) =
      __$AdminOrdersStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Purchase>? orders});
}

/// @nodoc
class __$AdminOrdersStateCopyWithImpl<$Res>
    extends _$AdminOrdersStateCopyWithImpl<$Res>
    implements _$AdminOrdersStateCopyWith<$Res> {
  __$AdminOrdersStateCopyWithImpl(
      _AdminOrdersState _value, $Res Function(_AdminOrdersState) _then)
      : super(_value, (v) => _then(v as _AdminOrdersState));

  @override
  _AdminOrdersState get _value => super._value as _AdminOrdersState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? orders = freezed,
  }) {
    return _then(_AdminOrdersState(
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

class _$_AdminOrdersState implements _AdminOrdersState {
  const _$_AdminOrdersState({this.isLoading = false, this.orders = null});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<Purchase>? orders;

  @override
  String toString() {
    return 'AdminOrdersState(isLoading: $isLoading, orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdminOrdersState &&
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
  _$AdminOrdersStateCopyWith<_AdminOrdersState> get copyWith =>
      __$AdminOrdersStateCopyWithImpl<_AdminOrdersState>(this, _$identity);
}

abstract class _AdminOrdersState implements AdminOrdersState {
  const factory _AdminOrdersState({bool isLoading, List<Purchase>? orders}) =
      _$_AdminOrdersState;

  @override
  bool get isLoading;
  @override
  List<Purchase>? get orders;
  @override
  @JsonKey(ignore: true)
  _$AdminOrdersStateCopyWith<_AdminOrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}
