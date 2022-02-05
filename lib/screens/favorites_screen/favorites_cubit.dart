import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/models/product.dart';
import 'package:licenta_georgebardas/repositories/products_repository.dart';

part 'favorites_cubit.freezed.dart';
part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(const FavoritesState()) {
    getFavoritesProducts();
  }

  Future<void> getFavoritesProducts() async {
    emit(state.copyWith(isLoading: true));
    emit(
      state.copyWith(
        isLoading: false,
        favoritesProducts: await ProductsRepository().getFavoriteProducts(),
      ),
    );
  }
}
