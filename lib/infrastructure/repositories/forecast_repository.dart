import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/forecast_repository.dart';
import '../../domain/value_objects/value_objects.dart';
import '../../env/env.dart';
import '../../utils/mapper.dart';
import '../../utils/typedef.dart';
import '../data_sources/open_weather/open_weather_data_source.dart';
import '../dto/dto.dart';

const _lang = 'ru';
const _amount = 4;
const _units = 'metric';
const _boxName = 'forecast';
const _cachedKey = 'cached_forecast';

@prod
@LazySingleton(as: ForecastRepository)
class ProdForecastRepository implements ForecastRepository {
  ProdForecastRepository(
    this._openWeatherDataSource,
    this._forecastMapper,
  );

  final OpenWeatherDataSource _openWeatherDataSource;
  final Mapper<ForecastResponse, Forecast> _forecastMapper;
  late final Box<List<JsonMap>> _box;

  @PostConstruct(preResolve: true)
  @override
  Future<void> init() async {
    _box = await Hive.openBox(_boxName);
  }

  @override
  Future<List<Forecast>?> getCachedForecast() async {
    final res = _box.get(_cachedKey);
    if (res == null) {
      return null;
    }

    final models = res.map(ForecastResponse.fromJson).toList();

    return _forecastMapper.mapList(models);
  }

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

    final jsonData = response.forecasts.map((e) => e.toJson()).toList();

    await _box.put(_cachedKey, jsonData);

    return _forecastMapper.mapList(response.forecasts);
  }
}
