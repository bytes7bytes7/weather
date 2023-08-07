import 'package:injectable/injectable.dart';

import '../repositories/forecast_repository.dart';
import '../repositories/location_repository.dart';
import '../value_objects/forecast_location_info.dart';

@singleton
class ForecastService {
  const ForecastService(
    this._locationRepository,
    this._forecastRepository,
  );

  final LocationRepository _locationRepository;
  final ForecastRepository _forecastRepository;

  Future<ForecastLocationInfo> getForecastForMyLocation() async {
    final location = await _locationRepository.getLocation();

    final forecasts = await _forecastRepository.getForecast(location);
    final locationName = await _locationRepository.getLocationName(location);

    return ForecastLocationInfo(
      forecasts: forecasts,
      locationName: locationName,
    );
  }

  Future<ForecastLocationInfo?> getCachedForecast() async {
    final forecasts = await _forecastRepository.getCachedForecast();
    final locationName = await _locationRepository.getCachedLocationName();
    if (forecasts == null || locationName == null) {
      return null;
    }

    return ForecastLocationInfo(
      forecasts: forecasts,
      locationName: locationName,
    );
  }
}
