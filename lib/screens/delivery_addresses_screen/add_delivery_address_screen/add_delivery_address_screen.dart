import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/screens/delivery_addresses_screen/add_delivery_address_screen/add_delivery_address_cubit.dart';
import 'package:licenta_georgebardas/screens/delivery_addresses_screen/add_delivery_address_screen/select_bottom_sheet.dart';
import 'package:licenta_georgebardas/utils/colors.dart';
import 'package:licenta_georgebardas/widgets/primary_button.dart';

class AddDeliveryAddressScreen extends StatelessWidget {
  const AddDeliveryAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController countyController = TextEditingController();
    final TextEditingController cityController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)?.add_delivery_address ?? "",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (context) => AddDeliveryAddressCubit()..getCounties(),
          child: BlocBuilder<AddDeliveryAddressCubit, AddDeliveryAddressState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Expanded(
                      child: !state.isLoading
                          ? Column(
                              children: [
                                SizedBox(height: 20),
                                TextFormField(
                                  controller: countyController,
                                  decoration: InputDecoration(
                                    label: Text(
                                      AppLocalizations.of(context)
                                              ?.add_delivery_county ??
                                          "",
                                    ),
                                  ),
                                  readOnly: true,
                                  onTap: () =>
                                      ModalHelper().showSelectCountyModal(
                                    context,
                                    state.counties ?? [],
                                    (county) {
                                      countyController.text = county.name;
                                      context
                                          .read<AddDeliveryAddressCubit>()
                                          .onCountySelected(county);
                                    },
                                  ),
                                ),
                                SizedBox(height: 20),
                                TextFormField(
                                  controller: cityController,
                                  decoration: InputDecoration(
                                    label: Text(
                                      AppLocalizations.of(context)
                                              ?.add_delivery_city ??
                                          "",
                                    ),
                                  ),
                                  readOnly: true,
                                  onTap: () =>
                                      ModalHelper().showSelectCityModal(
                                    context,
                                    state.cities ?? [],
                                    (city) {
                                      cityController.text = city.name;
                                      context
                                          .read<AddDeliveryAddressCubit>()
                                          .onCitySelected(city);
                                    },
                                  ),
                                ),
                                SizedBox(height: 20),
                                TextFormField(
                                  decoration: InputDecoration(
                                    label: Text(
                                      AppLocalizations.of(context)
                                              ?.add_delivery_details ??
                                          "",
                                    ),
                                  ),
                                  onChanged: context
                                      .read<AddDeliveryAddressCubit>()
                                      .onAddressChanged,
                                ),
                              ],
                            )
                          : Center(child: CircularProgressIndicator()),
                    ),
                    PrimaryButton(
                      text: AppLocalizations.of(context)?.add ?? "",
                      onPressed: state.isFormValid
                          ? context.read<AddDeliveryAddressCubit>().add
                          : null,
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
