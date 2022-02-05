part of 'favorites_cubit.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState({
    @Default(false) bool isLoading,
    @Default([]) List<Product> favoritesProducts,
  }) = _FavoritesState;
}
