import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/screens/cart_screen/cart_cubit.dart';
import 'package:licenta_georgebardas/utils/colors.dart';
import 'package:licenta_georgebardas/utils/dialog_helpers.dart';
import 'package:licenta_georgebardas/widgets/wrap_product_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CartCubit(),
      child: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          return Scaffold(
            body: RefreshIndicator(
              onRefresh: () => context.read<CartCubit>().getProducts(),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      AppLocalizations.of(context)?.cart ?? "",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: state.isLoading
                        ? Center(child: CircularProgressIndicator())
                        : state.products.isEmpty
                            ? Center(
                                child: Container(
                                  child: Text(
                                    AppLocalizations.of(context)
                                            ?.cart_products_empty ??
                                        "",
                                  ),
                                ),
                              )
                            : GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                ),
                                itemCount: state.products.length,
                                itemBuilder: (context, index) {
                                  return WrapProductItem(
                                    product: state.products[index],
                                    onTap: () => showDeleteDialog(
                                      context: context,
                                      title: "Stergere din cos",
                                      body:
                                          "Vrei sa stergi din cos produsul ${state.products[index].title}?",
                                      onPositivePressed: () => context
                                          .read<CartCubit>()
                                          .toggleCart(state.products[index]),
                                    ),
                                  );
                                },
                              ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("TOTAL"),
                        Text("${state.total} RON"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
