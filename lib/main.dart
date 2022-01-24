import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/firebase_options.dart';
import 'package:licenta_georgebardas/models/product.dart';
import 'package:licenta_georgebardas/router.gr.dart';
import 'package:licenta_georgebardas/utils/constants.dart';
import 'package:licenta_georgebardas/widgets/wrap_product_item.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

final appRouter = AppRouter();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}

class WidgetTest extends StatelessWidget {
  const WidgetTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<QuerySnapshot>(
        future: FirebaseFirestore.instance
            .collection(DATABASE_PRODUCTS_KEY)
            .withConverter<Product>(
              fromFirestore: (snapshot, _) =>
                  Product.fromJson(snapshot.data()!),
              toFirestore: (data, _) => data.toJson(),
            )
            .get(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text("Something went wrong");
          }

          if (snapshot.connectionState == ConnectionState.done) {
            List<Product>? products = snapshot.data?.docs
                .map((e) => e.data())
                .cast<Product>()
                .toList();
            return Wrap(
              children: products
                      ?.map((e) => WrapProductItem(
                            product: e,
                          ))
                      .toList() ??
                  [Container()],
            );
            return ListView.builder(
                itemCount: products?.length,
                itemBuilder: (context, index) {
                  return Text(
                      "${products?[index].title} ${products?[index].price}");
                });
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance.collection(DATABASE_PRODUCTS_KEY).add(Product(
                  title: "Produs",
                  category: "test_category",
                  price: 29.99,
                  currency: "RON",
                  image:
                      "ho1_dnchwl_st_frontlow-host-dining-chair-tait-stone-walnut_1.jpeg")
              .toJson());
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
