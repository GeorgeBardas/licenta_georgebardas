import 'package:firebase_storage/firebase_storage.dart';
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
    if (product.image != null) await getImageUrl();
    getIsFavorite();
  }

  Future<void> getImageUrl() async {
    emit(
      state.copyWith(
        imageUrl: await (FirebaseStorage.instance
                .ref("products")
                .child(product.image!))
            .getDownloadURL(),
      ),
    );
  }

  Future<void> getIsFavorite() async {
    emit(
      state.copyWith(
        isFavorite: await ProductsRepository().getIsFavorite(product),
      ),
    );
  }

  Future<void> toggleFavorite() async {
    await ProductsRepository().toggleProductFavorite(product);
    getIsFavorite();
  }
}
