import 'package:injectable/injectable.dart';

import '../../domain/value_objects/weather.dart';
import '../../domain/value_objects/weather_type.dart';
import '../../utils/mapper.dart';
import '../dto/weather_response/weather_response.dart';

@LazySingleton(as: Mapper<WeatherResponse, Weather>)
class WeatherResponseToWeatherMapper extends Mapper<WeatherResponse, Weather> {
  const WeatherResponseToWeatherMapper();

  @override
  Weather map(WeatherResponse item) {
    return Weather(
      type: _fromID(item.id),
      description: item.description,
    );
  }

  WeatherType _fromID(int id) {
    if (id >= 200 && id < 300) {
      return WeatherType.thunderstorm;
    }

    if (id >= 300 && id < 400) {
      return WeatherType.drizzle;
    }

    if (id >= 500 && id < 600) {
      return WeatherType.rain;
    }

    if (id >= 600 && id < 700) {
      return WeatherType.show;
    }

    if (id >= 700 && id < 800) {
      return WeatherType.atmosphere;
    }

    if (id == 800) {
      return WeatherType.clear;
    }

    if (id > 800 && id < 900) {
      return WeatherType.clouds;
    }

    return WeatherType.unknown;
  }
}
