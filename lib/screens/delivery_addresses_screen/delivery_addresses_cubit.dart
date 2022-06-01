import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/repositories/user_repository.dart';

part 'delivery_addresses_cubit.freezed.dart';
part 'delivery_addresses_state.dart';

class DeliveryAddressesCubit extends Cubit<DeliveryAddressesState> {
  DeliveryAddressesCubit() : super(const DeliveryAddressesState());

  Future<void> getAddresses() async {
    emit(state.copyWith(isLoading: true));

    emit(state.copyWith(
      addresses: await UserRepository().getDeliveryAddresses(),
    ));

    emit(state.copyWith(isLoading: false));
  }

  Future<void> deleteAddress(String address) async {
    emit(state.copyWith(isLoading: true));

    await UserRepository().deleteDeliveryAddress(address);

    emit(state.copyWith(isLoading: false));
    getAddresses();
  }
}
