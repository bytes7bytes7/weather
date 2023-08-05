import 'package:injectable/injectable.dart';

import '../../domain/forecast.dart';
import '../../domain/forecast_repository.dart';
import '../../domain/location.dart';
import '../../domain/temperature.dart';
import '../../domain/weather.dart';
import '../../domain/weather_type.dart';
import '../../domain/wind.dart';
import '../../domain/wind_direction.dart';

@test
@prod
@LazySingleton(as: ForecastRepository)
class TestForecastRepository implements ForecastRepository {
  const TestForecastRepository();

  @override
  Future<List<Forecast>> getForecast(Location location) async {
    final now = DateTime.now();

    return [
      Forecast(
        dateTime: now.copyWith(
          hour: 9,
          minute: 0,
        ),
        temperature: const Temperature(
          min: 27,
          max: 35,
          current: 29,
        ),
        humidity: 75,
        wind: const Wind(
          speed: 2,
          direction: WindDirection.east,
        ),
        weather: const Weather(
          description: 'ясно',
          type: WeatherType.clear,
        ),
      ),
      Forecast(
        dateTime: now.copyWith(
          hour: 12,
          minute: 0,
        ),
        temperature: const Temperature(
          min: 27,
          max: 35,
          current: 33,
        ),
        humidity: 50,
        wind: const Wind(
          speed: 1,
          direction: WindDirection.northEast,
        ),
        weather: const Weather(
          description: 'облачно',
          type: WeatherType.clouds,
        ),
      ),
      Forecast(
        dateTime: now.copyWith(
          hour: 15,
          minute: 0,
        ),
        temperature: const Temperature(
          min: 27,
          max: 35,
          current: 35,
        ),
        humidity: 40,
        wind: const Wind(
          speed: 1.5,
          direction: WindDirection.east,
        ),
        weather: const Weather(
          description: 'малооблачно',
          type: WeatherType.clouds,
        ),
      ),
      Forecast(
        dateTime: now.copyWith(
          hour: 18,
          minute: 0,
        ),
        temperature: const Temperature(
          min: 27,
          max: 35,
          current: 34,
        ),
        humidity: 35,
        wind: const Wind(
          speed: 3,
          direction: WindDirection.east,
        ),
        weather: const Weather(
          description: 'облачно',
          type: WeatherType.clouds,
        ),
      ),
      Forecast(
        dateTime: now.copyWith(
          hour: 21,
          minute: 0,
        ),
        temperature: const Temperature(
          min: 27,
          max: 35,
          current: 28,
        ),
        humidity: 25,
        wind: const Wind(
          speed: 5,
          direction: WindDirection.northEast,
        ),
        weather: const Weather(
          description: 'ясно',
          type: WeatherType.clear,
        ),
      ),
    ];
  }
}
