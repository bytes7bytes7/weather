// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'five_day_forecast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FiveDayForecastResponse _$FiveDayForecastResponseFromJson(
        Map<String, dynamic> json) =>
    FiveDayForecastResponse(
      forecasts: (json['list'] as List<dynamic>)
          .map((e) => ForecastResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FiveDayForecastResponseToJson(
        FiveDayForecastResponse instance) =>
    <String, dynamic>{
      'list': instance.forecasts,
    };
