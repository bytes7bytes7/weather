// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'five_day_forecast_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FiveDayForecastRequest _$FiveDayForecastRequestFromJson(
        Map<String, dynamic> json) =>
    FiveDayForecastRequest(
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['lon'] as num).toDouble(),
      apiKey: json['apiKey'] as String,
      language: json['lang'] as String,
      amount: json['cnt'] as int,
      units: json['units'] as String,
    );

Map<String, dynamic> _$FiveDayForecastRequestToJson(
        FiveDayForecastRequest instance) =>
    <String, dynamic>{
      'lat': instance.latitude,
      'lon': instance.longitude,
      'apiKey': instance.apiKey,
      'lang': instance.language,
      'cnt': instance.amount,
      'units': instance.units,
    };
