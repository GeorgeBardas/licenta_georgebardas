import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta_georgebardas/models/category.dart';
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
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: state.categories?.length,
                  itemBuilder: (context, index) {
                    return CategoryItemWidget(
                        category: state.categories?[index]);
                  });
        },
      ),
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({required this.category, Key? key})
      : super(key: key);

  final Category? category;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(Icons.category),
            SizedBox(
              width: 15,
            ),
            Text(
              category?.title ?? "",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
