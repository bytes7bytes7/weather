// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceRequest _$PlaceRequestFromJson(Map<String, dynamic> json) => PlaceRequest(
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['lon'] as num).toDouble(),
      language: json['accept-language'] as String,
      format: json['format'] as String,
    );

Map<String, dynamic> _$PlaceRequestToJson(PlaceRequest instance) =>
    <String, dynamic>{
      'lat': instance.latitude,
      'lon': instance.longitude,
      'accept-language': instance.language,
      'format': instance.format,
    };
