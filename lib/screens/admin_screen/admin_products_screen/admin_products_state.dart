part of 'admin_products_cubit.dart';

@freezed
class AdminProductsState with _$AdminProductsState {
  const factory AdminProductsState({
    @Default(false) bool isLoading,
    @Default([]) List<Product>? products,
  }) = _AdminProductsState;
}
