import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_add_product_screen/admin_product_select_category/admin_product_select_category_cubit.dart';
import 'package:licenta_georgebardas/screens/products_screen/products_screen.dart';

class AdminProductSelectCategoryScreen extends StatelessWidget {
  const AdminProductSelectCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AdminProductSelectCategoryCubit(),
      child: BlocBuilder<AdminProductSelectCategoryCubit,
          AdminProductSelectCategoryState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                AppLocalizations.of(context)?.add_category ?? "",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              foregroundColor: Colors.black,
            ),
            body: RefreshIndicator(
              onRefresh: () => context
                  .read<AdminProductSelectCategoryCubit>()
                  .getCategories(),
              child: state.isLoading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: state.categories.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => appRouter.pop(state.categories[index]),
                          child: AbsorbPointer(
                            child: CategoryItemWidget(
                              category: state.categories[index],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          );
        },
      ),
    );
  }
}
