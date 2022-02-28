import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/screens/cart_screen/cart_cubit.dart';
import 'package:licenta_georgebardas/utils/colors.dart';
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
                                child: Text(
                                  AppLocalizations.of(context)
                                          ?.favorite_products_empty ??
                                      "",
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
                                  );
                                },
                              ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
