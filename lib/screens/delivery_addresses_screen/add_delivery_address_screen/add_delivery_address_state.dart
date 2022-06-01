part of 'add_delivery_address_cubit.dart';

@freezed
class AddDeliveryAddressState with _$AddDeliveryAddressState {
  const factory AddDeliveryAddressState({
    @Default(false) bool isLoading,
    @Default(false) bool isFormValid,
    @Default(null) List<County>? counties,
    @Default(null) List<City>? cities,
  }) = _AddDeliveryAddressState;
}
