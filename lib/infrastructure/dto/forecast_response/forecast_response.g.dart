// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastResponse _$ForecastResponseFromJson(Map<String, dynamic> json) =>
    ForecastResponse(
      dateTime: json['dt'] as int,
      info: WeatherInfoResponse.fromJson(json['main'] as Map<String, dynamic>),
      weather:
          WeatherResponse.fromJson(json['weather'] as Map<String, dynamic>),
      wind: WindResponse.fromJson(json['wind'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForecastResponseToJson(ForecastResponse instance) =>
    <String, dynamic>{
      'dt': instance.dateTime,
      'main': instance.info,
      'weather': instance.weather,
      'wind': instance.wind,
    };
