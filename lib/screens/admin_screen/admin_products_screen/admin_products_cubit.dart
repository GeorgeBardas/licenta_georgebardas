import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/models/product.dart';
import 'package:licenta_georgebardas/repositories/products_repository.dart';

part 'admin_products_cubit.freezed.dart';
part 'admin_products_state.dart';

class AdminProductsCubit extends Cubit<AdminProductsState> {
  AdminProductsCubit() : super(const AdminProductsState());
  List<Product> products = [];

  Future<void> getProducts() async {
    emit(state.copyWith(isLoading: true));
    final result = await ProductsRepository().getAllProducts() ?? [];
    products = result;

    emit(
      state.copyWith(
        products: result,
      ),
    );

    emit(state.copyWith(isLoading: false));
  }

  Future<void> deleteProduct(Product product) async {
    emit(state.copyWith(isLoading: true));
    await ProductsRepository().deleteProduct(product);
    await getProducts();
  }

  void searchForProduct({required String keyword}) {
    emit(
      state.copyWith(
        products: products
            .where(
              (product) => product.title!.toLowerCase().contains(
                    keyword.toLowerCase(),
                  ),
            )
            .toList(),
      ),
    );
  }
}
