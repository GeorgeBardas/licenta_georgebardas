import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/models/category.dart';
import 'package:licenta_georgebardas/repositories/categories_repository.dart';

part 'admin_categories_cubit.freezed.dart';
part 'admin_categories_state.dart';

class AdminCategoriesCubit extends Cubit<AdminCategoriesState> {
  AdminCategoriesCubit() : super(const AdminCategoriesState()) {
    getCategories();
  }

  Future<void> getCategories() async {
    emit(state.copyWith(isLoading: true));
    emit(state.copyWith(
      isLoading: false,
      categories: await CategoriesRepository().getCategories() ?? [],
    ));
  }

  Future<void> deleteCategory(Category category) async {
    emit(state.copyWith(isLoading: true));
    await CategoriesRepository().removeCategory(category);
    await getCategories();
  }
}
