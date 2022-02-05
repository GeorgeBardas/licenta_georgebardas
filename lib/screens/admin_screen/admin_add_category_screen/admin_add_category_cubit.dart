import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/models/category.dart';
import 'package:licenta_georgebardas/repositories/categories_repository.dart';
import 'package:licenta_georgebardas/utils/input_validation.dart';

part 'admin_add_category_cubit.freezed.dart';
part 'admin_add_category_state.dart';

class AdminAddCategoryCubit extends Cubit<AdminAddCategoryState> {
  AdminAddCategoryCubit() : super(const AdminAddCategoryState());

  String _titleCategory = "";

  Future<void> addCategory() async {
    emit(state.copyWith(isLoading: true));

    await CategoriesRepository().addCategory(
      Category(
        title: _titleCategory,
      ),
    );

    emit(state.copyWith(isLoading: false));
    appRouter.pop(true);
  }

  void onTitleChange(String title) {
    _titleCategory = title;
    _checkValidation();
  }

  void _checkValidation() {
    emit(state.copyWith(
        isFormFieldValid: InputValidation().validateCategory(_titleCategory)));
  }
}
