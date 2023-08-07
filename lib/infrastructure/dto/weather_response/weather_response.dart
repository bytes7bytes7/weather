import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/typedef.dart';

part 'weather_response.g.dart';

@JsonSerializable()
class WeatherResponse {
  const WeatherResponse({
    required this.id,
    required this.description,
  });

  final int id;
  final String description;

  factory WeatherResponse.fromJson(JsonMap json) =>
      _$WeatherResponseFromJson(json);
}
