import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/router.gr.dart';
import 'package:licenta_georgebardas/screens/home_tab_screen/home_tab_cubit.dart';
import 'package:licenta_georgebardas/utils/colors.dart';
import 'package:licenta_georgebardas/widgets/wrap_product_item/wrap_product_item.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  _HomeTabScreenState createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)?.home_screen ?? "",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        foregroundColor: Colors.black,
      ),
      body: BlocProvider(
        create: (context) => HomeTabCubit()..getProducts(),
        child: BlocBuilder<HomeTabCubit, HomeTabState>(
          builder: (context, state) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    onChanged: (keyword) =>
                        context.read<HomeTabCubit>().searchForProduct(
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
                  child: !state.isLoading
                      ? RefreshIndicator(
                          onRefresh: () =>
                              context.read<HomeTabCubit>().getProducts(),
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
                                    childAspectRatio: 0.65,
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

  @override
  bool get wantKeepAlive => true;
}
