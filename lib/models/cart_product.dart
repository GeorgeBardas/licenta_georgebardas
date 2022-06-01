import 'package:json_annotation/json_annotation.dart';
import 'package:licenta_georgebardas/models/product.dart';

part 'cart_product.g.dart';

@JsonSerializable()
class CartProduct {
  final Product? product;
  final int quantity;

  CartProduct({
    required this.product,
    required this.quantity,
  });

  factory CartProduct.fromJson(Map<String, dynamic> json) =>
      _$CartProductFromJson(json);

  Map<String, dynamic> toJson() => _$CartProductToJson(this);
}
