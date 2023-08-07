// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'five_day_forecast_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FiveDayForecastRequest _$FiveDayForecastRequestFromJson(
        Map<String, dynamic> json) =>
    FiveDayForecastRequest(
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['log'] as num).toDouble(),
      apiKey: json['apiKey'] as String,
      language: json['lang'] as String,
    );

Map<String, dynamic> _$FiveDayForecastRequestToJson(
        FiveDayForecastRequest instance) =>
    <String, dynamic>{
      'lat': instance.latitude,
      'log': instance.longitude,
      'apiKey': instance.apiKey,
      'lang': instance.language,
    };
