part of 'category_products_cubit.dart';

@freezed
class CategoryProductsState with _$CategoryProductsState {
  const factory CategoryProductsState({
    @Default(false) bool isLoading,
    @Default([]) List<Product> products,
  }) = _CategoryProductsState;
}
