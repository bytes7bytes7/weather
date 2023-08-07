import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/typedef.dart';

part 'weather_info_response.g.dart';

@JsonSerializable()
class WeatherInfoResponse {
  const WeatherInfoResponse({
    required this.currentTemp,
    required this.maxTemp,
    required this.minTemp,
    required this.humidity,
  });

  @JsonKey(name: 'temp')
  final double currentTemp;

  @JsonKey(name: 'temp_max')
  final double maxTemp;

  @JsonKey(name: 'temp_min')
  final double minTemp;

  final int humidity;

  factory WeatherInfoResponse.fromJson(JsonMap json) =>
      _$WeatherInfoResponseFromJson(json);
}
