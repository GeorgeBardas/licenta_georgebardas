import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final bool isAdmin;
  final List<String> favProductsIds;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.isAdmin = false,
    this.favProductsIds = const [],
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
