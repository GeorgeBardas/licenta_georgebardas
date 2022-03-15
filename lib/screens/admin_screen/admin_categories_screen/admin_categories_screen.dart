import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/router.gr.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_categories_screen/admin_categories_cubit.dart';
import 'package:licenta_georgebardas/screens/products_screen/products_screen.dart';
import 'package:licenta_georgebardas/utils/dialog_helpers.dart';

class AdminCategoriesScreen extends StatelessWidget {
  const AdminCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AdminCategoriesCubit(),
      child: BlocBuilder<AdminCategoriesCubit, AdminCategoriesState>(
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
              onRefresh: () =>
                  context.read<AdminCategoriesCubit>().getCategories(),
              child: state.isLoading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: state.categories.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => showDeleteDialog(
                            context: context,
                            title: 'Sterge categoria',
                            body:
                                "Vrei sa stergi categoria ${state.categories[index].title}?",
                            onPositivePressed: () => context
                                .read<AdminCategoriesCubit>()
                                .deleteCategory(
                                  state.categories[index],
                                ),
                          ),
                          child: CategoryItemWidget(
                            category: state.categories[index],
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
