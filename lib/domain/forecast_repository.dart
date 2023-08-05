import 'forecast.dart';
import 'location.dart';

abstract class ForecastRepository {
  const ForecastRepository();

  Future<List<Forecast>> getForecast(Location location);
}
