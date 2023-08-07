import 'package:injectable/injectable.dart';

import '../repositories/forecast_repository.dart';
import '../repositories/location_repository.dart';
import '../value_objects/forecast.dart';

@singleton
class ForecastService {
  const ForecastService(
    this._locationRepository,
    this._forecastRepository,
  );

  final LocationRepository _locationRepository;
  final ForecastRepository _forecastRepository;

  Future<List<Forecast>> getForecastForMyLocation() async {
    final location = await _locationRepository.getLocation();

    return _forecastRepository.getForecast(location);
  }
}
