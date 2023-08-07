import 'forecast.dart';

class ForecastLocationInfo {
  const ForecastLocationInfo({
    required this.forecasts,
    required this.locationName,
  });

  final List<Forecast> forecasts;
  final String locationName;
}
