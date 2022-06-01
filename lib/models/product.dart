import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final String? id;
  final String? image;
  final String? title;
  final String? category;
  final double? price;
  final String? currency;
  final String? description;

  Product({
    this.id,
    this.image,
    required this.title,
    required this.category,
    required this.price,
    this.currency = "RON",
    required this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
