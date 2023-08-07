// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WindResponse _$WindResponseFromJson(Map<String, dynamic> json) => WindResponse(
      speed: (json['speed'] as num).toDouble(),
      degree: (json['deg'] as num).toDouble(),
    );

Map<String, dynamic> _$WindResponseToJson(WindResponse instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.degree,
    };
