import 'weather_type.dart';

class Weather {
  const Weather({
    required this.type,
    required this.description,
  });

  final WeatherType type;
  final String description;
}
