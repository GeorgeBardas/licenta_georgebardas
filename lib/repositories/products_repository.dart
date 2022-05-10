import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:licenta_georgebardas/models/category.dart';
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
      final product = await _getProductById(productId.toString());
      if (product != null) favProducts.add(product);
    }

    return favProducts;
  }

  Future<List<Product>?> getAllProducts() async {
    final List<Product>? list = [];
    await FirebaseFirestore.instance
        .collection(DATABASE_PRODUCTS_KEY)
        .withConverter<Product>(
          fromFirestore: (snapshot, _) {
            return Product.fromJson(snapshot.data()!);
          },
          toFirestore: (data, _) => data.toJson(),
        )
        .get()
        .then((value) => value.docs.forEach((element) {
              list?.add(element.data());
            }));

    if (list?.isNotEmpty == true)
      return list;
    else
      return null;
  }

  Future<List<Product>?> getCategoryProducts(Category category) async {
    final List<Product>? list = [];
    await FirebaseFirestore.instance
        .collection(DATABASE_PRODUCTS_KEY)
        .where(
          "category",
          isEqualTo: category.id,
        )
        .withConverter<Product>(
          fromFirestore: (snapshot, _) {
            return Product.fromJson(snapshot.data()!);
          },
          toFirestore: (data, _) => data.toJson(),
        )
        .get()
        .then((value) => value.docs.forEach((element) {
              list?.add(element.data());
            }));

    if (list?.isNotEmpty == true)
      return list;
    else
      return null;
  }

  Future<void> deleteProduct(Product product) async {
    await FirebaseFirestore.instance
        .collection(DATABASE_PRODUCTS_KEY)
        .doc(product.id)
        .delete();
  }

  Future<bool> getIsFavorite(Product product) async {
    final List<dynamic> favoriteProductsIds = (await FirebaseFirestore.instance
            .collection(DATABASE_USERS_KEY)
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .get())
        .get(FAVORITES_PRODUCTS_KEY);

    List<Product> favProducts = [];
    for (var productId in favoriteProductsIds) {
      final product = await _getProductById(productId.toString());
      if (product != null) favProducts.add(product);
    }

    return favProducts
            .firstWhereOrNull((element) => element.id == product.id) !=
        null;
  }

  Future<bool> getIsInCart(Product product) async {
    final List<dynamic> cartProductsIds = (await FirebaseFirestore.instance
            .collection(DATABASE_USERS_KEY)
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .get())
        .get(CART_PRODUCTS_KEY);

    List<Product> cartProducts = [];
    for (var productId in cartProductsIds) {
      final product = await _getProductById(productId.toString());
      if (product != null) cartProducts.add(product);
    }

    return cartProducts
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

  Future<void> toggleProductCart(Product product) async {
    List<dynamic> cartProductsArray = (await FirebaseFirestore.instance
            .collection(DATABASE_USERS_KEY)
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .get())
        .get(CART_PRODUCTS_KEY);
    if (!cartProductsArray.contains(product.id))
      cartProductsArray.add(product.id ?? "");
    else
      cartProductsArray.remove(product.id);
    await FirebaseFirestore.instance
        .collection(DATABASE_USERS_KEY)
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({CART_PRODUCTS_KEY: cartProductsArray});
  }

  Future<void> emptyCart() async {
    await FirebaseFirestore.instance
        .collection(DATABASE_USERS_KEY)
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({CART_PRODUCTS_KEY: []});
  }

  Future<List<Product>> getCartProducts() async {
    final List<dynamic> cartProductsIds = (await FirebaseFirestore.instance
            .collection(DATABASE_USERS_KEY)
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .get())
        .get(CART_PRODUCTS_KEY);

    List<Product> cartProducts = [];
    for (var productId in cartProductsIds) {
      final product = await _getProductById(productId.toString());
      if (product != null) cartProducts.add(product);
    }

    return cartProducts;
  }

  Future<String?> getProductUrl(Product product) async {
    if (product.image != null) {
      return await (FirebaseStorage.instance.ref().child(product.image!))
          .getDownloadURL();
    }
    return null;
  }

  Future<Product?> _getProductById(String productId) async {
    return (await FirebaseFirestore.instance
            .collection(DATABASE_PRODUCTS_KEY)
            .doc(productId)
            .withConverter<Product>(
                fromFirestore: (snapshot, _) {
                  return Product.fromJson(snapshot.data()!);
                },
                toFirestore: (data, _) => data.toJson())
            .get())
        .data();
  }
}
