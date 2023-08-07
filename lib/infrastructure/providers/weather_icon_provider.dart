import 'package:injectable/injectable.dart';

import '../../application/application.dart';
import '../../domain/value_objects/weather_type.dart';
import '../../gen/assets.gen.dart';

@LazySingleton(as: WeatherIconProvider)
class ProdWeatherIconProvider implements WeatherIconProvider {
  const ProdWeatherIconProvider();

  @override
  String getBigIconPath(WeatherType weatherType) {
    switch (weatherType) {
      case WeatherType.thunderstorm:
        return Assets.images.thunderstorm.path;

      case WeatherType.drizzle:
        return Assets.images.drizzle.path;

      case WeatherType.rain:
        return Assets.images.rain.path;

      case WeatherType.snow:
        return Assets.images.snow.path;

      case WeatherType.atmosphere:
        // TODO:
        return Assets.images.clear.path;

      case WeatherType.clear:
        return Assets.images.clear.path;

      case WeatherType.clouds:
        return Assets.images.clouds.path;

      case WeatherType.unknown:
        // TODO:
        return Assets.images.clear.path;
    }
  }

  @override
  String getSmallIconPath(WeatherType weatherType) {
    switch (weatherType) {
      case WeatherType.thunderstorm:
        return Assets.icons.thunderstorm.path;

      case WeatherType.drizzle:
        return Assets.icons.drizzle.path;

      case WeatherType.rain:
        return Assets.icons.rain.path;

      case WeatherType.snow:
        return Assets.icons.snow.path;

      case WeatherType.atmosphere:
        // TODO:
        return Assets.icons.clear.path;

      case WeatherType.clear:
        return Assets.icons.clear.path;

      case WeatherType.clouds:
        return Assets.icons.clouds.path;

      case WeatherType.unknown:
        // TODO:
        return Assets.icons.clear.path;
    }
  }
}
