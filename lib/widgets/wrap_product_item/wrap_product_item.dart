import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta_georgebardas/models/product.dart';
import 'package:licenta_georgebardas/widgets/wrap_product_item/wrap_product_item_cubit.dart';

class WrapProductItem extends StatelessWidget {
  const WrapProductItem({
    required this.product,
    this.onTap,
    Key? key,
  }) : super(key: key);

  final Product product;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WrapProductItemCubit(),
      child: BlocBuilder<WrapProductItemCubit, WrapProductItemState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 7,
                      child: product.image == null
                          ? Center(
                              child: Icon(
                                Icons.photo_camera,
                                size: 60,
                              ),
                            )
                          : Center(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Image.network(product.image!),
                              ),
                            ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Text(
                            product.title ?? "",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          "${product.price} ${product.currency}",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
