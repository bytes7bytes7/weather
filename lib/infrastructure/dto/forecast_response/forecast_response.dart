import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/typedef.dart';
import '../weather_info_response/weather_info_response.dart';
import '../weather_response/weather_response.dart';
import '../wind_response/wind_response.dart';

part 'forecast_response.g.dart';

@JsonSerializable()
class ForecastResponse {
  const ForecastResponse({
    required this.dateTime,
    required this.info,
    required this.weather,
    required this.wind,
  });

  @JsonKey(name: 'dt')
  final int dateTime;

  @JsonKey(name: 'main')
  final WeatherInfoResponse info;
  final List<WeatherResponse> weather;
  final WindResponse wind;

  factory ForecastResponse.fromJson(JsonMap json) =>
      _$ForecastResponseFromJson(json);
}
