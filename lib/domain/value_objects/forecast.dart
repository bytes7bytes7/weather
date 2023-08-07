import 'temperature.dart';
import 'weather.dart';
import 'wind.dart';

class Forecast {
  const Forecast({
    required this.dateTime,
    required this.temperature,
    required this.humidity,
    required this.wind,
    required this.weather,
  });

  final DateTime dateTime;
  final Temperature temperature;
  final int humidity;
  final Wind wind;
  final Weather weather;
}
