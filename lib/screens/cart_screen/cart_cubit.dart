import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/models/product.dart';
import 'package:licenta_georgebardas/models/purchase.dart';
import 'package:licenta_georgebardas/repositories/products_repository.dart';
import 'package:licenta_georgebardas/repositories/purchase_repository.dart';

part 'cart_cubit.freezed.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState()) {
    getProducts();
  }

  Future<void> getProducts() async {
    emit(state.copyWith(isLoading: true));
    emit(
      state.copyWith(
        isLoading: false,
        products: await ProductsRepository().getCartProducts(),
      ),
    );
    _getTotal();
  }

  void _getTotal() {
    double total = 0;
    if (state.products.isNotEmpty) {
      state.products.forEach((product) {
        total += product.price ?? 0;
      });
    }
    emit(state.copyWith(total: total));
  }

  Future<void> toggleCart(Product product) async {
    await ProductsRepository().toggleProductCart(product);
    getProducts();
  }

  void purchaseProducts() async {
    emit(state.copyWith(isLoading: true));

    await PurchaseRepository().addPurchase(
      Purchase(
        productsId: state.products.map((product) => product.id!).toList(),
        price: state.total,
        timestamp: DateTime.now().millisecondsSinceEpoch.toString(),
        userId: FirebaseAuth.instance.currentUser!.uid,
      ),
    );

    await ProductsRepository().emptyCart();

    emit(
      state.copyWith(
        isLoading: false,
        products: [],
        total: 0,
      ),
    );
  }
}
