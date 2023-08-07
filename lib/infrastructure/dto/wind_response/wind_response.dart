import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/typedef.dart';

part 'wind_response.g.dart';

@JsonSerializable()
class WindResponse {
  const WindResponse({
    required this.speed,
    required this.degree,
  });

  final double speed;

  @JsonKey(name: 'deg')
  final double degree;

  factory WindResponse.fromJson(JsonMap json) => _$WindResponseFromJson(json);

  JsonMap toJson() => _$WindResponseToJson(this);
}
