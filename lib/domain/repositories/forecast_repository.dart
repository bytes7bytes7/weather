import '../value_objects/forecast.dart';
import '../value_objects/location.dart';

abstract class ForecastRepository {
  const ForecastRepository();

  Future<List<Forecast>> getForecast(Location location);
}
