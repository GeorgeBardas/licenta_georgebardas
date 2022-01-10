import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta_georgebardas/screens/products_screen/products_cubit.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(),
      child: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          return state.isLoading
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: state.categories?.length,
                  itemBuilder: (context, index) {
                    return Text(state.categories?[index].title ?? "");
                  });
        },
      ),
    );
  }
}
