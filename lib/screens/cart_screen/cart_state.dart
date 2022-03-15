part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default(false) bool isLoading,
    @Default([]) List<Product> products,
    @Default(0.0) double total,
  }) = _CartState;
}
