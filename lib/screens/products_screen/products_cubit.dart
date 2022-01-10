import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/models/category.dart';
import 'package:licenta_georgebardas/repositories/categories_repository.dart';

part 'products_cubit.freezed.dart';
part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(const ProductsState()) {
    getCategories();
  }

  Future<void> getCategories() async {
    emit(state.copyWith(isLoading: true));

    emit(state.copyWith(
      categories: await CategoriesRepository().getCategories(),
    ));

    emit(state.copyWith(isLoading: false));
  }
}
