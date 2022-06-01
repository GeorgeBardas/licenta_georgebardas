import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/models/product.dart';
import 'package:licenta_georgebardas/repositories/products_repository.dart';

part 'home_tab_cubit.freezed.dart';
part 'home_tab_state.dart';

class HomeTabCubit extends Cubit<HomeTabState> {
  HomeTabCubit() : super(const HomeTabState());

  List<Product> products = [];

  Future<void> getProducts() async {
    emit(state.copyWith(isLoading: true));
    final result = await ProductsRepository().getAllProducts() ?? [];
    products = result;

    emit(
      state.copyWith(
        products: result,
      ),
    );

    emit(state.copyWith(isLoading: false));
  }

  void searchForProduct({required String keyword}) {
    emit(
      state.copyWith(
        products: products
            .where(
              (product) => product.title!.toLowerCase().contains(
                    keyword.toLowerCase(),
                  ),
            )
            .toList(),
      ),
    );
  }
}
