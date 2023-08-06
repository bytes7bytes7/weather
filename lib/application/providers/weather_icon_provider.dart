import '../../domain/value_objects/weather_type.dart';

abstract class WeatherIconProvider {
  const WeatherIconProvider();

  String getSmallIconPath(WeatherType weatherType);

  String getBigIconPath(WeatherType weatherType);
}
