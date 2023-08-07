import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../dto/dto.dart';

part 'geocoding_data_source.g.dart';

const _baseUrl = 'https://nominatim.openstreetmap.org/';

@lazySingleton
@RestApi()
abstract class GeocodingDataSource {
  @factoryMethod
  factory GeocodingDataSource(Dio dio) {
    return GeocodingDataSource._(dio, baseUrl: _baseUrl);
  }

  factory GeocodingDataSource._(Dio dio, {String baseUrl}) =
      _GeocodingDataSource;

  @GET('/reverse')
  Future<PlaceResponse> reverse(
    @Queries() PlaceRequest request,
  );
}
