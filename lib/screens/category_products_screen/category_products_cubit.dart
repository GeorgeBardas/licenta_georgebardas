import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/models/category.dart';
import 'package:licenta_georgebardas/models/product.dart';
import 'package:licenta_georgebardas/repositories/products_repository.dart';

part 'category_products_cubit.freezed.dart';
part 'category_products_state.dart';

class CategoryProductsCubit extends Cubit<CategoryProductsState> {
  CategoryProductsCubit() : super(const CategoryProductsState());

  Future<void> getProducts(Category category) async {
    emit(state.copyWith(isLoading: true));

    emit(
      state.copyWith(
        products:
            await ProductsRepository().getCategoryProducts(category) ?? [],
      ),
    );

    emit(state.copyWith(isLoading: false));
  }
}
