import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/router.gr.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_products_screen/admin_products_cubit.dart';
import 'package:licenta_georgebardas/utils/dialog_helpers.dart';
import 'package:licenta_georgebardas/widgets/wrap_product_item/wrap_product_item.dart';

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
                  const AdminAddProductScreenRoute(),
                );
                if (result != null)
                  context.read<AdminProductsCubit>().getProducts();
              },
              child: Icon(Icons.add),
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    onChanged: (keyword) =>
                        context.read<AdminProductsCubit>().searchForProduct(
                              keyword: keyword,
                            ),
                    decoration: InputDecoration(
                      //add prefix icon
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: AppLocalizations.of(context)?.search ?? "",
                    ),
                  ),
                ),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () =>
                        context.read<AdminProductsCubit>().getProducts(),
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
                                  childAspectRatio: 0.65,
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
              ],
            ),
          );
        },
      ),
    );
  }
}
