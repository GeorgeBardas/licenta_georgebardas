import 'package:flutter/material.dart';
import 'package:licenta_georgebardas/models/product.dart';

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
          width: MediaQuery.of(context).size.width * 0.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Center(
                  child: Icon(Icons.photo),
                ),
              ),
              Text(product.title ?? ""),
              SizedBox(
                height: 10,
              ),
              Text("${product.price} ${product.currency}"),
            ],
          ),
        ),
      ),
    );
  }
}
