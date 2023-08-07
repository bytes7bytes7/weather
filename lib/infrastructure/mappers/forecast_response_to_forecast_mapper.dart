import 'package:injectable/injectable.dart';

import '../../domain/value_objects/forecast.dart';
import '../../domain/value_objects/temperature.dart';
import '../../domain/value_objects/weather.dart';
import '../../domain/value_objects/wind.dart';
import '../../utils/mapper.dart';
import '../dto/forecast_response/forecast_response.dart';
import '../dto/weather_info_response/weather_info_response.dart';
import '../dto/weather_response/weather_response.dart';
import '../dto/wind_response/wind_response.dart';

@LazySingleton(as: Mapper<ForecastResponse, Forecast>)
class ForecastResponseToForecastMapper
    extends Mapper<ForecastResponse, Forecast> {
  const ForecastResponseToForecastMapper(
    this._windMapper,
    this._weatherMapper,
    this._temperatureMapper,
  );

  final Mapper<WindResponse, Wind> _windMapper;
  final Mapper<WeatherResponse, Weather> _weatherMapper;
  final Mapper<WeatherInfoResponse, Temperature> _temperatureMapper;

  @override
  Forecast map(ForecastResponse item) {
    return Forecast(
      dateTime: DateTime.fromMillisecondsSinceEpoch(item.dateTime * 1000),
      temperature: _temperatureMapper.map(item.info),
      humidity: item.info.humidity,
      wind: _windMapper.map(item.wind),
      weather: _weatherMapper.map(item.weather.first),
    );
  }
}
