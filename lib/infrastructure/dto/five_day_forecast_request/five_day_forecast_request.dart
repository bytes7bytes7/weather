import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/typedef.dart';

part 'five_day_forecast_request.g.dart';

@JsonSerializable()
class FiveDayForecastRequest {
  const FiveDayForecastRequest({
    required this.latitude,
    required this.longitude,
    required this.apiKey,
    required this.language,
  });

  @JsonKey(name: 'lat')
  final double latitude;

  @JsonKey(name: 'log')
  final double longitude;
  final String apiKey;

  @JsonKey(name: 'lang')
  final String language;

  factory FiveDayForecastRequest.fromJson(JsonMap json) =>
      _$FiveDayForecastRequestFromJson(json);
}
