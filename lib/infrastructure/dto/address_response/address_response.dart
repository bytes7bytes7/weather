import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/typedef.dart';

part 'address_response.g.dart';

@JsonSerializable()
class AddressResponse {
  const AddressResponse({
    this.country,
    this.city,
  });

  final String? country;
  final String? city;

  factory AddressResponse.fromJson(JsonMap json) =>
      _$AddressResponseFromJson(json);

  JsonMap toJson() => _$AddressResponseToJson(this);
}
