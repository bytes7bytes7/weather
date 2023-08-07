import 'package:injectable/injectable.dart';

import '../../domain/repositories/forecast_repository.dart';
import '../../domain/value_objects/value_objects.dart';
import '../../env/env.dart';
import '../../utils/mapper.dart';
import '../data_sources/open_weather/open_weather_data_source.dart';
import '../dto/dto.dart';

const _lang = 'ru';
const _amount = 4;
const _units = 'metric';

@prod
@LazySingleton(as: ForecastRepository)
class ProdForecastRepository implements ForecastRepository {
  const ProdForecastRepository(
    this._openWeatherDataSource,
    this._forecastMapper,
  );

  final OpenWeatherDataSource _openWeatherDataSource;
  final Mapper<ForecastResponse, Forecast> _forecastMapper;

  @override
  Future<List<Forecast>> getForecast(Location location) async {
    final request = FiveDayForecastRequest(
      latitude: location.latitude,
      longitude: location.longitude,
      apiKey: Env.openWeatherApiKey,
      language: _lang,
      amount: _amount,
      units: _units,
    );

    final response = await _openWeatherDataSource.getFiveDayForecast(request);

    return _forecastMapper.mapList(response.forecasts);
  }
}
