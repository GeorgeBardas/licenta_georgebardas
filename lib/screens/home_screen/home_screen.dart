import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/screens/cart_screen/cart_screen.dart';
import 'package:licenta_georgebardas/screens/home_screen/home_cubit.dart';
import 'package:licenta_georgebardas/screens/products_screen/products_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: BlocProvider(
        create: (context) => HomeCubit(),
        child: BlocBuilder<HomeCubit, int>(
          builder: (context, state) {
            _tabController.index = state;
            return DefaultTabController(
              length: 4,
              child: Scaffold(
                appBar: AppBar(
                  title: Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppLocalizations.of(context)?.home_screen ?? ""),
                        if (kIsWeb)
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context.read<HomeCubit>().updateIndex(0);
                                  appRouter.pop();
                                },
                                child: Tab(
                                  icon: Icon(Icons.home),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.read<HomeCubit>().updateIndex(1);
                                  appRouter.pop();
                                },
                                child: Tab(
                                  icon: Icon(Icons.category),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.read<HomeCubit>().updateIndex(2);
                                  appRouter.pop();
                                },
                                child: Tab(
                                  icon: Icon(Icons.shopping_cart_outlined),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Tab(
                                icon: Icon(Icons.account_box),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.05,
                              )
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
                body: TabBarView(
                  controller: _tabController,
                  children: [
                    WidgetTest(),
                    ProductsScreen(),
                    CartScreen(),
                    WidgetTest(),
                  ],
                ),
                bottomNavigationBar: !kIsWeb
                    ? BottomNavigationBar(
                        type: BottomNavigationBarType.fixed,
                        currentIndex: state,
                        onTap: (index) {
                          context.read<HomeCubit>().updateIndex(index);
                          appRouter.pop();
                        },
                        items: [
                          BottomNavigationBarItem(
                              label:
                                  AppLocalizations.of(context)?.home_screen ??
                                      "",
                              icon: Icon(Icons.home)),
                          BottomNavigationBarItem(
                              label: AppLocalizations.of(context)
                                      ?.products_screen ??
                                  "",
                              icon: Icon(Icons.category)),
                          BottomNavigationBarItem(
                              label: AppLocalizations.of(context)?.cart ?? "",
                              icon: Icon(Icons.shopping_cart_outlined)),
                          BottomNavigationBarItem(
                              label: AppLocalizations.of(context)
                                      ?.account_screen ??
                                  "",
                              icon: Icon(Icons.account_box)),
                        ],
                      )
                    : null,
              ),
            );
          },
        ),
      ),
    );
  }
}
