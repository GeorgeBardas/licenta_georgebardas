import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/firebase_options.dart';
import 'package:licenta_georgebardas/models/product.dart';
import 'package:licenta_georgebardas/router.gr.dart';
import 'package:licenta_georgebardas/utils/colors.dart';
import 'package:licenta_georgebardas/utils/constants.dart';
import 'package:licenta_georgebardas/widgets/wrap_product_item.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      //Android
      statusBarColor: Colors.white,
      //iOS
      statusBarBrightness: Brightness.light,
    ),
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
      body: Column(
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
          FutureBuilder<QuerySnapshot>(
            future: FirebaseFirestore.instance
                .collection(DATABASE_PRODUCTS_KEY)
                .withConverter<Product>(
                  fromFirestore: (snapshot, _) =>
                      Product.fromJson(snapshot.data()!),
                  toFirestore: (data, _) => data.toJson(),
                )
                .get(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
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
              }

              return Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance
              .collection(DATABASE_PRODUCTS_KEY)
              .add(Product(
                      title: "Produs",
                      category: "test_category",
                      price: 29.99,
                      currency: "RON",
                      image:
                          "ho1_dnchwl_st_frontlow-host-dining-chair-tait-stone-walnut_1.jpeg")
                  .toJson())
              .then(
                (value) => FirebaseFirestore.instance
                    .collection(DATABASE_PRODUCTS_KEY)
                    .doc(value.id)
                    .set({"id": value.id}),
              );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
