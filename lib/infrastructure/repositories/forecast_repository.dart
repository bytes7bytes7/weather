import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
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
const _forecastBoxName = 'forecasts';
const _forecastCachedKey = 'cached_forecast';

@prod
@LazySingleton(as: ForecastRepository)
class ProdForecastRepository implements ForecastRepository {
  ProdForecastRepository(
    this._openWeatherDataSource,
    this._forecastMapper,
  );

  final OpenWeatherDataSource _openWeatherDataSource;
  final Mapper<ForecastResponse, Forecast> _forecastMapper;
  late final Box<String> _forecastBox;

  @PostConstruct(preResolve: true)
  @override
  Future<void> init() async {
    _forecastBox = await Hive.openBox(_forecastBoxName);
  }

  @override
  Future<List<Forecast>?> getCachedForecast() async {
    final res = _forecastBox.get(_forecastCachedKey);
    if (res == null) {
      return null;
    }

    final data = json.decode(res);
    final models = <ForecastResponse>[];
    for (final e in data) {
      if (e is Map) {
        models.add(ForecastResponse.fromJson(e.cast<String, Object?>()));
      }
    }

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

    await _forecastBox.put(_forecastCachedKey, json.encode(jsonData));

    return _forecastMapper.mapList(response.forecasts);
  }
}
