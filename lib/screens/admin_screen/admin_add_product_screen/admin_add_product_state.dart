part of 'admin_add_product_cubit.dart';

@freezed
class AdminAddProductState with _$AdminAddProductState {
  const factory AdminAddProductState({
    @Default(false) bool isLoading,
    @Default(false) bool isFormFieldValid,
  }) = _AdminAddProductState;
}
