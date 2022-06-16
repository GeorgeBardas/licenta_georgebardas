part of 'admin_orders_cubit.dart';

@freezed
class AdminOrdersState with _$AdminOrdersState {
  const factory AdminOrdersState({
    @Default(false) bool isLoading,
    @Default(null) List<Purchase>? orders,
  }) = _AdminOrdersState;
}
