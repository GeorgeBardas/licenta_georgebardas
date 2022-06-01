import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/models/category.dart';
import 'package:licenta_georgebardas/models/product.dart';
import 'package:licenta_georgebardas/repositories/products_repository.dart';
import 'package:licenta_georgebardas/utils/input_validation.dart';

part 'admin_add_product_cubit.freezed.dart';
part 'admin_add_product_state.dart';

class AdminAddProductCubit extends Cubit<AdminAddProductState> {
  AdminAddProductCubit() : super(const AdminAddProductState());

  String _title = "";
  String _price = "";
  String _description = "";
  Category? _category;
  XFile? _image;

  Future<void> addProduct() async {
    emit(state.copyWith(isLoading: true));

    await ProductsRepository().addProduct(
      Product(
        title: _title,
        description: _description,
        price: double.tryParse(_price) ?? 0,
        category: _category!.id,
      ),
      _image!,
    );

    emit(state.copyWith(isLoading: false));
    appRouter.pop(true);
  }

  void onTitleChange(String title) {
    _title = title;
    _checkValidation();
  }

  void onPriceChange(String price) {
    _price = price;
    _checkValidation();
  }

  void onDescriptionChange(String description) {
    _description = description;
    _checkValidation();
  }

  void onImageSelected(XFile image) {
    _image = image;
    _checkValidation();
  }

  void _checkValidation() {
    emit(
      state.copyWith(
        isFormFieldValid: InputValidation().validateCategory(_title) &&
            InputValidation().validateCategory(_description) &&
            InputValidation().validatePrice(_price) &&
            _category != null &&
            _image != null,
      ),
    );
  }

  void selectCategory(Category category) {
    _category = category;
  }
}
