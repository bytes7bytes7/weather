import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/typedef.dart';
import '../address_response/address_response.dart';

part 'place_response.g.dart';

@JsonSerializable()
class PlaceResponse {
  const PlaceResponse({
    required this.address,
  });

  final AddressResponse address;

  factory PlaceResponse.fromJson(JsonMap json) => _$PlaceResponseFromJson(json);

  JsonMap toJson() => _$PlaceResponseToJson(this);
}
