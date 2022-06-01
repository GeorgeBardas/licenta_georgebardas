import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/models/category.dart';
import 'package:licenta_georgebardas/router.gr.dart';
import 'package:licenta_georgebardas/screens/delivery_addresses_screen/delivery_addresses_cubit.dart';
import 'package:licenta_georgebardas/utils/colors.dart';
import 'package:licenta_georgebardas/utils/dialog_helpers.dart';

class DeliveryAddressesScreen extends StatelessWidget {
  const DeliveryAddressesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)?.delivery_addresses ?? "",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        foregroundColor: Colors.black,
      ),
      body: BlocProvider(
        create: (context) => DeliveryAddressesCubit()..getAddresses(),
        child: BlocBuilder<DeliveryAddressesCubit, DeliveryAddressesState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: !state.isLoading
                      ? RefreshIndicator(
                          onRefresh: context
                              .read<DeliveryAddressesCubit>()
                              .getAddresses,
                          child: ListView.builder(
                              itemCount: state.addresses?.length,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    SizedBox(width: 15),
                                    Icon(Icons.map),
                                    GestureDetector(
                                      onTap: () => showDeleteDialog(
                                        context: context,
                                        title: 'Sterge adresa',
                                        body:
                                            "Vrei sa stergi adresa ${state.addresses?[index]}?",
                                        onPositivePressed: () => context
                                            .read<DeliveryAddressesCubit>()
                                            .deleteAddress(
                                              state.addresses![index],
                                            ),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.85,
                                        child: Text(
                                          state.addresses?[index] ?? "",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        padding: EdgeInsets.all(15),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        )
                      : Center(child: CircularProgressIndicator()),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final result =
              await appRouter.push(const AddDeliveryAddressScreenRoute());
          if (result != null)
            context.read<DeliveryAddressesCubit>().getAddresses();
        },
      ),
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({required this.category, Key? key})
      : super(key: key);

  final Category? category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => appRouter.push(
        CategoryProductsScreenRoute(
          category: category,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(Icons.category),
            SizedBox(
              width: 15,
            ),
            Text(
              category?.title ?? "",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
