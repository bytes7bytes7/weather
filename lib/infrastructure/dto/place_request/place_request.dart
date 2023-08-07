import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/typedef.dart';

part 'place_request.g.dart';

@JsonSerializable()
class PlaceRequest {
  const PlaceRequest({
    required this.latitude,
    required this.longitude,
    required this.language,
    required this.format,
  });

  @JsonKey(name: 'lat')
  final double latitude;

  @JsonKey(name: 'lon')
  final double longitude;

  @JsonKey(name: 'accept-language')
  final String language;

  final String format;

  JsonMap toJson() => _$PlaceRequestToJson(this);
}
