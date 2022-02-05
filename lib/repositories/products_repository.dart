import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:licenta_georgebardas/models/product.dart';
import 'package:licenta_georgebardas/utils/constants.dart';

class ProductsRepository {
  Future<List<Product>> getFavoriteProducts() async {
    final List<dynamic> favoriteProductsIds = (await FirebaseFirestore.instance
            .collection(DATABASE_USERS_KEY)
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .get())
        .get(FAVORITES_PRODUCTS_KEY);

    List<Product> favProducts = [];
    for (var productId in favoriteProductsIds) {
      favProducts.add(await _getProductById(productId.toString()));
      print(favProducts);
    }

    return favProducts;
  }
}

Future<Product> _getProductById(String productId) async {
  return (await FirebaseFirestore.instance
          .collection(DATABASE_PRODUCTS_KEY)
          .doc(productId)
          .withConverter<Product>(
            fromFirestore: (snapshot, _) {
              return Product.fromJson(snapshot.data()!);
            },
            toFirestore: (data, _) => data.toJson(),
          )
          .get())
      .data()!;
}
