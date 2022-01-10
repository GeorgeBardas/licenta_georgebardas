import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/firebase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:licenta_georgebardas/models/product.dart';
import 'package:licenta_georgebardas/router.gr.dart';

void main() {
  if (Firebase.apps.isEmpty) {
    initializeApp(
        apiKey: "AIzaSyDNaG_NhTSTRldyJyS0bDI5Hcm6La4aeWE",
        authDomain: "licenta-georgebardas.firebaseapp.com",
        databaseURL: "licenta-georgebardas.firebaseapp.com",
        projectId: "licenta-georgebardas",
        appId: "1:349701023452:web:e6d48c469b149db74af619",
        storageBucket: "licenta-georgebardas.appspot.com");
  }

  runApp(MyApp());
}

final appRouter = AppRouter();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp.router(
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: appRouter.delegate());
  }
}

class WidgetTest extends StatelessWidget {
  const WidgetTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<QuerySnapshot>(
        future: FirebaseFirestore.instance
            .collection("products")
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
            return ListView.builder(
                itemCount: products?.length,
                itemBuilder: (context, index) {
                  return Text(
                      "${products?[index].title} ${products?[index].price}");
                });
          }

          return CircularProgressIndicator();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance.collection("products").add(
              Product(title: "Produs", category: "test_category", price: 29.99)
                  .toJson());
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
