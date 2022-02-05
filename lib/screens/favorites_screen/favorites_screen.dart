import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/screens/favorites_screen/favorites_cubit.dart';
import 'package:licenta_georgebardas/utils/colors.dart';
import 'package:licenta_georgebardas/widgets/wrap_product_item.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FavoritesCubit(),
      child: BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
          return Scaffold(
            body: RefreshIndicator(
              onRefresh: () =>
                  context.read<FavoritesCubit>().getFavoritesProducts(),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      AppLocalizations.of(context)?.favorites ?? "",
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
                          : state.favoritesProducts.isEmpty
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
                                  itemCount: state.favoritesProducts.length,
                                  itemBuilder: (context, index) {
                                    return WrapProductItem(
                                      product: state.favoritesProducts[index],
                                    );
                                  }))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
