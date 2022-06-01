part of 'orders_cubit.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    @Default(false) bool isLoading,
    @Default(null) List<Purchase>? orders,
  }) = _OrdersState;
}
