import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../dto/dto.dart';

part 'open_weather_data_source.g.dart';

@RestApi(baseUrl: 'https://api.openweathermap.org/data/')
abstract class OpenWeatherDataSource {
  @factoryMethod
  factory OpenWeatherDataSource(Dio dio, {String baseUrl}) =
      _OpenWeatherDataSource;

  @GET('/2.5/forecast')
  Future<FiveDayForecastResponse> getFiveDayForecast(
    @Queries() FiveDayForecastRequest request,
  );
}
