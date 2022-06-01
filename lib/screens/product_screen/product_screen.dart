import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/models/product.dart';
import 'package:licenta_georgebardas/screens/product_screen/product_cubit.dart';
import 'package:licenta_georgebardas/utils/colors.dart';
import 'package:licenta_georgebardas/widgets/primary_button.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({required this.product, Key? key}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(product)..init(),
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              elevation: 0,
              foregroundColor: Colors.black,
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: product.image?.isEmpty == true
                              ? Center(
                                  child: Icon(
                                    Icons.photo_camera,
                                    size: 60,
                                  ),
                                )
                              : Center(child: Image.network(product.image!)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      product.title ?? "",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    width:
                                        MediaQuery.of(context).size.width - 100,
                                  ),
                                  GestureDetector(
                                    onTap: context
                                        .read<ProductCubit>()
                                        .toggleFavorite,
                                    child: Icon(
                                      state.isFavorite
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      size: 30,
                                      color: AppColors.grey,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                product.category ?? "",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "${product.price} ${product.currency}",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                product.description ?? "",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      children: [
                        Expanded(
                          child: PrimaryButton(
                            text: state.isInCart
                                ? AppLocalizations.of(context)
                                        ?.remove_from_cart ??
                                    ""
                                : AppLocalizations.of(context)?.add_to_cart ??
                                    "",
                            onPressed: () =>
                                context.read<ProductCubit>().toggleCart(),
                          ),
                        ),
                        SizedBox(width: 10),
                        FloatingActionButton(
                          child: Icon(Icons.add),
                          onPressed: () =>
                              context.read<ProductCubit>().setQuantity(
                                    state.quantity + 1,
                                  ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          state.quantity.toString(),
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        FloatingActionButton(
                          child: Icon(Icons.remove),
                          onPressed: () =>
                              context.read<ProductCubit>().setQuantity(
                                    state.quantity - 1,
                                  ),
                        ),
                      ],
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
