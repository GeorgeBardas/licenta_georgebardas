part of 'admin_categories_cubit.dart';

@freezed
class AdminCategoriesState with _$AdminCategoriesState {
  const factory AdminCategoriesState({
    @Default(false) bool isLoading,
    @Default([]) List<Category> categories,
  }) = _AdminCategoriesState;
}
