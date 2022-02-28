import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
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
    }

    return favProducts;
  }

  Future<bool> getIsFavorite(Product product) async {
    final List<dynamic> favoriteProductsIds = (await FirebaseFirestore.instance
            .collection(DATABASE_USERS_KEY)
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .get())
        .get(FAVORITES_PRODUCTS_KEY);

    List<Product> favProducts = [];
    for (var productId in favoriteProductsIds) {
      favProducts.add(await _getProductById(productId.toString()));
    }

    return favProducts
            .firstWhereOrNull((element) => element.id == product.id) !=
        null;
  }

  Future<void> toggleProductFavorite(Product product) async {
    List<dynamic> favProductsArray = (await FirebaseFirestore.instance
            .collection(DATABASE_USERS_KEY)
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .get())
        .get(FAVORITES_PRODUCTS_KEY);
    if (!favProductsArray.contains(product.id))
      favProductsArray.add(product.id ?? "");
    else
      favProductsArray.remove(product.id);
    await FirebaseFirestore.instance
        .collection(DATABASE_USERS_KEY)
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({FAVORITES_PRODUCTS_KEY: favProductsArray});
  }

  Future<List<Product>> getCartProducts() async {
    final List<dynamic> cartProductsIds = (await FirebaseFirestore.instance
            .collection(DATABASE_USERS_KEY)
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .get())
        .get(CART_PRODUCTS_KEY);

    List<Product> cartProducts = [];
    for (var productId in cartProductsIds) {
      cartProducts.add(await _getProductById(productId.toString()));
    }

    return cartProducts;
  }

  Future<String?> getProductUrl(Product product) async {
    if (product.image != null) {
      return await (FirebaseStorage.instance.ref().child(product.image!))
          .getDownloadURL();
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
}
