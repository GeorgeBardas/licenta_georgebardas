import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/models/category.dart';
import 'package:licenta_georgebardas/repositories/categories_repository.dart';

part 'admin_product_select_category_cubit.freezed.dart';
part 'admin_product_select_category_state.dart';

class AdminProductSelectCategoryCubit
    extends Cubit<AdminProductSelectCategoryState> {
  AdminProductSelectCategoryCubit()
      : super(const AdminProductSelectCategoryState()) {
    getCategories();
  }

  Future<void> getCategories() async {
    emit(state.copyWith(isLoading: true));
    emit(state.copyWith(
      isLoading: false,
      categories: await CategoriesRepository().getCategories() ?? [],
    ));
  }
}
