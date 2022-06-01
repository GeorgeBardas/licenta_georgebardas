part of 'admin_product_select_category_cubit.dart';

@freezed
class AdminProductSelectCategoryState with _$AdminProductSelectCategoryState {
  const factory AdminProductSelectCategoryState({
    @Default(false) bool isLoading,
    @Default([]) List<Category> categories,
  }) = _AdminProductSelectCategoryState;
}
