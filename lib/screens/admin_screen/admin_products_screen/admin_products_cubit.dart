import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/models/product.dart';
import 'package:licenta_georgebardas/repositories/products_repository.dart';

part 'admin_products_cubit.freezed.dart';
part 'admin_products_state.dart';

class AdminProductsCubit extends Cubit<AdminProductsState> {
  AdminProductsCubit() : super(const AdminProductsState());

  Future<void> getProducts() async {
    emit(state.copyWith(isLoading: true));
    emit(
      state.copyWith(
        isLoading: false,
        products: await ProductsRepository().getAllProducts() ?? [],
      ),
    );
  }

  Future<void> deleteProduct(Product product) async {
    emit(state.copyWith(isLoading: true));
    await ProductsRepository().deleteProduct(product);
    await getProducts();
  }
}
