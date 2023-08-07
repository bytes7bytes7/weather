// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherInfoResponse _$WeatherInfoResponseFromJson(Map<String, dynamic> json) =>
    WeatherInfoResponse(
      currentTemp: (json['temp'] as num).toDouble(),
      maxTemp: (json['temp_max'] as num).toDouble(),
      minTemp: (json['temp_min'] as num).toDouble(),
      humidity: json['humidity'] as int,
    );

Map<String, dynamic> _$WeatherInfoResponseToJson(
        WeatherInfoResponse instance) =>
    <String, dynamic>{
      'temp': instance.currentTemp,
      'temp_max': instance.maxTemp,
      'temp_min': instance.minTemp,
      'humidity': instance.humidity,
    };
