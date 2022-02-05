part of 'admin_add_category_cubit.dart';

@freezed
class AdminAddCategoryState with _$AdminAddCategoryState {
  const factory AdminAddCategoryState({
    @Default(false) bool isLoading,
    @Default(false) bool isFormFieldValid,
  }) = _AdminAddCategoryState;
}
