part of 'delivery_addresses_cubit.dart';

@freezed
class DeliveryAddressesState with _$DeliveryAddressesState {
  const factory DeliveryAddressesState({
    @Default(false) bool isLoading,
    @Default(null) List<String>? addresses,
  }) = _DeliveryAddressesState;
}
