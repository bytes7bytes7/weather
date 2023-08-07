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
    required this.amount,
    required this.units,
  });

  @JsonKey(name: 'lat')
  final double latitude;

  @JsonKey(name: 'lon')
  final double longitude;
  final String apiKey;

  @JsonKey(name: 'lang')
  final String language;

  @JsonKey(name: 'cnt')
  final int amount;

  final String units;

  JsonMap toJson() => _$FiveDayForecastRequestToJson(this);
}
