import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/models/product.dart';
import 'package:licenta_georgebardas/repositories/products_repository.dart';

part 'product_cubit.freezed.dart';
part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.product) : super(const ProductState());

  final Product product;

  void init() async {
    getIsFavorite();
    getIsInCart();
  }

  void setQuantity(int newQuantity) => emit(
        state.copyWith(
          quantity: newQuantity,
        ),
      );

  Future<void> getIsFavorite() async {
    emit(
      state.copyWith(
        isFavorite: await ProductsRepository().getIsFavorite(product),
      ),
    );
  }

  Future<void> getIsInCart() async {
    emit(
      state.copyWith(
        isInCart: await ProductsRepository().getIsInCart(product),
      ),
    );
  }

  Future<void> toggleFavorite() async {
    await ProductsRepository().toggleProductFavorite(product);
    getIsFavorite();
  }

  Future<void> toggleCart() async {
    await ProductsRepository().toggleProductCart(product);
    getIsInCart();
  }
}
