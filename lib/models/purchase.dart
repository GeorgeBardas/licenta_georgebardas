import 'package:json_annotation/json_annotation.dart';

part 'purchase.g.dart';

@JsonSerializable()
class Purchase {
  final String? id;
  final double price;
  final String timestamp;
  final List<String> productsId;

  Purchase({
    this.id = "",
    required this.productsId,
    required this.price,
    required this.timestamp,
  });

  factory Purchase.fromJson(Map<String, dynamic> json) =>
      _$PurchaseFromJson(json);

  Map<String, dynamic> toJson() => _$PurchaseToJson(this);
}
