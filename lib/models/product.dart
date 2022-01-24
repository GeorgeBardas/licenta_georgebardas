import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final String? image;
  final String? title;
  final String? category;
  final double? price;
  final String? currency;

  Product({
    required this.image,
    required this.title,
    required this.category,
    required this.price,
    required this.currency,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
