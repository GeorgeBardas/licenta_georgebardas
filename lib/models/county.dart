import 'package:json_annotation/json_annotation.dart';

part 'county.g.dart';

@JsonSerializable()
class County {
  @JsonKey(name: "auto")
  final String id;
  @JsonKey(name: "nume")
  final String name;

  County({
    required this.id,
    required this.name,
  });

  factory County.fromJson(Map<String, dynamic> json) => _$CountyFromJson(json);

  Map<String, dynamic> toJson() => _$CountyToJson(this);
}
