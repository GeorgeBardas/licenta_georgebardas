// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_statistics_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdminStatisticsStateTearOff {
  const _$AdminStatisticsStateTearOff();

  _AdminStatisticsState call(
      {bool isLoading = false,
      List<Purchase>? orders = null,
      List<TimeSeriesSales> chartData = const []}) {
    return _AdminStatisticsState(
      isLoading: isLoading,
      orders: orders,
      chartData: chartData,
    );
  }
}

/// @nodoc
const $AdminStatisticsState = _$AdminStatisticsStateTearOff();

/// @nodoc
mixin _$AdminStatisticsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Purchase>? get orders => throw _privateConstructorUsedError;
  List<TimeSeriesSales> get chartData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminStatisticsStateCopyWith<AdminStatisticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminStatisticsStateCopyWith<$Res> {
  factory $AdminStatisticsStateCopyWith(AdminStatisticsState value,
          $Res Function(AdminStatisticsState) then) =
      _$AdminStatisticsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Purchase>? orders,
      List<TimeSeriesSales> chartData});
}

/// @nodoc
class _$AdminStatisticsStateCopyWithImpl<$Res>
    implements $AdminStatisticsStateCopyWith<$Res> {
  _$AdminStatisticsStateCopyWithImpl(this._value, this._then);

  final AdminStatisticsState _value;
  // ignore: unused_field
  final $Res Function(AdminStatisticsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? orders = freezed,
    Object? chartData = freezed,
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
      chartData: chartData == freezed
          ? _value.chartData
          : chartData // ignore: cast_nullable_to_non_nullable
              as List<TimeSeriesSales>,
    ));
  }
}

/// @nodoc
abstract class _$AdminStatisticsStateCopyWith<$Res>
    implements $AdminStatisticsStateCopyWith<$Res> {
  factory _$AdminStatisticsStateCopyWith(_AdminStatisticsState value,
          $Res Function(_AdminStatisticsState) then) =
      __$AdminStatisticsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Purchase>? orders,
      List<TimeSeriesSales> chartData});
}

/// @nodoc
class __$AdminStatisticsStateCopyWithImpl<$Res>
    extends _$AdminStatisticsStateCopyWithImpl<$Res>
    implements _$AdminStatisticsStateCopyWith<$Res> {
  __$AdminStatisticsStateCopyWithImpl(
      _AdminStatisticsState _value, $Res Function(_AdminStatisticsState) _then)
      : super(_value, (v) => _then(v as _AdminStatisticsState));

  @override
  _AdminStatisticsState get _value => super._value as _AdminStatisticsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? orders = freezed,
    Object? chartData = freezed,
  }) {
    return _then(_AdminStatisticsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Purchase>?,
      chartData: chartData == freezed
          ? _value.chartData
          : chartData // ignore: cast_nullable_to_non_nullable
              as List<TimeSeriesSales>,
    ));
  }
}

/// @nodoc

class _$_AdminStatisticsState implements _AdminStatisticsState {
  const _$_AdminStatisticsState(
      {this.isLoading = false, this.orders = null, this.chartData = const []});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<Purchase>? orders;
  @JsonKey()
  @override
  final List<TimeSeriesSales> chartData;

  @override
  String toString() {
    return 'AdminStatisticsState(isLoading: $isLoading, orders: $orders, chartData: $chartData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdminStatisticsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.orders, orders) &&
            const DeepCollectionEquality().equals(other.chartData, chartData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(orders),
      const DeepCollectionEquality().hash(chartData));

  @JsonKey(ignore: true)
  @override
  _$AdminStatisticsStateCopyWith<_AdminStatisticsState> get copyWith =>
      __$AdminStatisticsStateCopyWithImpl<_AdminStatisticsState>(
          this, _$identity);
}

abstract class _AdminStatisticsState implements AdminStatisticsState {
  const factory _AdminStatisticsState(
      {bool isLoading,
      List<Purchase>? orders,
      List<TimeSeriesSales> chartData}) = _$_AdminStatisticsState;

  @override
  bool get isLoading;
  @override
  List<Purchase>? get orders;
  @override
  List<TimeSeriesSales> get chartData;
  @override
  @JsonKey(ignore: true)
  _$AdminStatisticsStateCopyWith<_AdminStatisticsState> get copyWith =>
      throw _privateConstructorUsedError;
}
