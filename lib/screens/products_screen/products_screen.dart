import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/models/category.dart';
import 'package:licenta_georgebardas/router.gr.dart';
import 'package:licenta_georgebardas/screens/products_screen/products_cubit.dart';
import 'package:licenta_georgebardas/utils/colors.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)?.products_screen ?? "",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        foregroundColor: Colors.black,
      ),
      body: BlocProvider(
        create: (context) => ProductsCubit(),
        child: BlocBuilder<ProductsCubit, ProductsState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: !state.isLoading
                      ? RefreshIndicator(
                          onRefresh: () =>
                              context.read<ProductsCubit>().getCategories(),
                          child: ListView.builder(
                              itemCount: state.categories?.length,
                              itemBuilder: (context, index) {
                                return CategoryItemWidget(
                                    category: state.categories?[index]);
                              }),
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

  @override
  bool get wantKeepAlive => true;
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
