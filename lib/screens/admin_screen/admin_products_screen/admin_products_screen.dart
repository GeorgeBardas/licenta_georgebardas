import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/router.gr.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_categories_screen/admin_categories_cubit.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_products_screen/admin_products_cubit.dart';
import 'package:licenta_georgebardas/utils/dialog_helpers.dart';
import 'package:licenta_georgebardas/widgets/wrap_product_item.dart';

class AdminProductsScreen extends StatelessWidget {
  const AdminProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AdminProductsCubit()..getProducts(),
      child: BlocBuilder<AdminProductsCubit, AdminProductsState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                AppLocalizations.of(context)?.add_product ?? "",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              foregroundColor: Colors.black,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                final result = await appRouter.push(
                  const AdminAddCategoryScreenRoute(),
                );
                if (result != null)
                  context.read<AdminCategoriesCubit>().getCategories();
              },
              child: Icon(Icons.add),
            ),
            body: RefreshIndicator(
              onRefresh: () => context.read<AdminProductsCubit>().getProducts(),
              child: state.isLoading
                  ? Center(child: CircularProgressIndicator())
                  : Expanded(
                      child: state.isLoading
                          ? Center(child: CircularProgressIndicator())
                          : state.products?.isEmpty == true
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
                                  itemCount: state.products?.length,
                                  itemBuilder: (context, index) {
                                    return WrapProductItem(
                                      product: state.products![index],
                                      onTap: () => showDeleteDialog(
                                        context: context,
                                        title: 'Sterge produsul',
                                        body:
                                            "Vrei sa stergi produsul ${state.products![index].title}?",
                                        onPositivePressed: () => context
                                            .read<AdminProductsCubit>()
                                            .deleteProduct(
                                              state.products![index],
                                            ),
                                      ),
                                    );
                                  },
                                ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
