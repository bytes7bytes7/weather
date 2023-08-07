import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/typedef.dart';
import '../forecast_response/forecast_response.dart';

part 'five_day_forecast_response.g.dart';

@JsonSerializable()
class FiveDayForecastResponse {
  const FiveDayForecastResponse({required this.forecasts});

  @JsonKey(name: 'list')
  final List<ForecastResponse> forecasts;

  factory FiveDayForecastResponse.fromJson(JsonMap json) =>
      _$FiveDayForecastResponseFromJson(json);
}
