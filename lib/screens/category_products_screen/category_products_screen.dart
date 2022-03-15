import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/models/category.dart';
import 'package:licenta_georgebardas/router.gr.dart';
import 'package:licenta_georgebardas/screens/category_products_screen/category_products_cubit.dart';
import 'package:licenta_georgebardas/screens/products_screen/products_cubit.dart';
import 'package:licenta_georgebardas/utils/colors.dart';
import 'package:licenta_georgebardas/widgets/wrap_product_item.dart';

class CategoryProductsScreen extends StatelessWidget {
  const CategoryProductsScreen({
    required this.category,
    Key? key,
  }) : super(key: key);

  final Category? category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          category?.title ?? "",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        foregroundColor: Colors.black,
      ),
      body: BlocProvider(
        create: (context) => CategoryProductsCubit()..getProducts(category!),
        child: BlocBuilder<CategoryProductsCubit, CategoryProductsState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: !state.isLoading
                      ? RefreshIndicator(
                          onRefresh: () =>
                              context.read<ProductsCubit>().getCategories(),
                          child: state.products.isEmpty == true
                              ? Center(
                                  child: Text(
                                    AppLocalizations.of(context)
                                            ?.products_empty ??
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
                                      onTap: () => appRouter.push(
                                        ProductScreenRoute(
                                          product: state.products[index],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                        )
                      : Center(child: CircularProgressIndicator()),
                ),
              ],
            );
          },
        ),
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
    return Container(
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
