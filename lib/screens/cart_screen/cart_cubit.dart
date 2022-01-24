import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/models/product.dart';

part 'cart_cubit.freezed.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState()) {
    // getCategories();
  }

  // Future<void> getCategories() async {
  //   emit(state.copyWith(isLoading: true));
  //
  //   emit(state.copyWith(
  //     categories: await CategoriesRepository().getCategories(),
  //   ));
  //
  //   emit(state.copyWith(isLoading: false));
  // }
}
