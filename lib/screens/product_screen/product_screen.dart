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
                          child: state.imageUrl.isEmpty
                              ? Center(
                                  child: Icon(
                                    Icons.photo_camera,
                                    size: 60,
                                  ),
                                )
                              : Center(child: Image.network(state.imageUrl)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    product.title ?? "",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: PrimaryButton(
                      text: AppLocalizations.of(context)?.add_to_cart ?? "",
                      onPressed: () {},
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
