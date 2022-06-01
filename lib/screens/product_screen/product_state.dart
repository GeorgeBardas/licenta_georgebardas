part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    @Default(false) bool isLoading,
    @Default(false) bool isFavorite,
    @Default(false) bool isInCart,
    @Default(1) int quantity,
  }) = _ProductState;
}
