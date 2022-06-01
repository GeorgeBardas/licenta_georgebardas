import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/models/city.dart';
import 'package:licenta_georgebardas/models/county.dart';
import 'package:licenta_georgebardas/repositories/country_repository.dart';
import 'package:licenta_georgebardas/repositories/user_repository.dart';

part 'add_delivery_address_cubit.freezed.dart';
part 'add_delivery_address_state.dart';

class AddDeliveryAddressCubit extends Cubit<AddDeliveryAddressState> {
  AddDeliveryAddressCubit() : super(const AddDeliveryAddressState());

  County? selectedCounty;
  City? selectedCity;
  String address = "";

  Future<void> getCounties() async {
    emit(state.copyWith(isLoading: true));

    emit(state.copyWith(
      counties: await CountryRepository().getCounties(),
    ));

    emit(state.copyWith(isLoading: false));
  }

  Future<void> getCities(County county) async {
    emit(state.copyWith(isLoading: true));

    emit(state.copyWith(
      cities: await CountryRepository().getCities(county.id),
    ));

    emit(state.copyWith(isLoading: false));
  }

  void onCountySelected(County county) {
    selectedCounty = county;
    getCities(county);
    checkFormValid();
  }

  void onCitySelected(City city) {
    selectedCity = city;
    checkFormValid();
  }

  void onAddressChanged(String value) {
    address = value;
    checkFormValid();
  }

  void checkFormValid() {
    emit(
      state.copyWith(
        isFormValid: selectedCounty != null &&
            selectedCity != null &&
            address.isNotEmpty,
      ),
    );
  }

  Future<void> add() async {
    emit(state.copyWith(isLoading: true));

    await UserRepository().saveUserDeliveryAddress(
      "${selectedCounty?.name}, ${selectedCity?.name}, $address",
    );

    emit(state.copyWith(isLoading: false));
    appRouter.pop(true);
  }
}
