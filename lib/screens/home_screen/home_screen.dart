import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta_georgebardas/main.dart';
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
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, int>(
        builder: (context, state) {
          _tabController.index = state;
          return DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                title: Text("Home"),
              ),
              drawer: kIsWeb
                  ? Drawer(
                      child: ListView(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.read<HomeCubit>().updateIndex(0);
                              appRouter.pop();
                            },
                            child: Tab(
                              icon: Icon(Icons.home),
                              text: "Home",
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context.read<HomeCubit>().updateIndex(1);
                              appRouter.pop();
                            },
                            child: Tab(
                              icon: Icon(Icons.category),
                              text: "Products",
                            ),
                          ),
                          Tab(
                            icon: Icon(Icons.home),
                            text: "Home",
                          ),
                          Tab(
                            icon: Icon(Icons.home),
                            text: "Home",
                          ),
                        ],
                      ),
                    )
                  : null,
              body: TabBarView(
                controller: _tabController,
                children: [
                  WidgetTest(),
                  ProductsScreen(),
                  WidgetTest(),
                  WidgetTest(),
                ],
              ),
              bottomNavigationBar: !kIsWeb
                  ? Container(
                      child: ColoredBox(
                        color: Colors.black,
                        child: TabBar(
                          tabs: [
                            Tab(
                              icon: Icon(Icons.home),
                              text: "Home",
                            ),
                            Tab(
                              icon: Icon(Icons.category),
                              text: "Products",
                            ),
                            Tab(
                              icon: Icon(Icons.home),
                              text: "Home",
                            ),
                            Tab(
                              icon: Icon(Icons.home),
                              text: "Home",
                            ),
                          ],
                        ),
                      ),
                    )
                  : null,
            ),
          );
        },
      ),
    );
  }
}
