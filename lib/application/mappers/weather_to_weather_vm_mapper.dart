import 'package:injectable/injectable.dart';

import '../../domain/value_objects/weather.dart';
import '../../utils/mapper.dart';
import '../providers/weather_icon_provider.dart';
import '../view_models/weather_vm/weather_vm.dart';

@LazySingleton(as: Mapper<Weather, WeatherVM>)
class WeatherToWeatherVMMapper extends Mapper<Weather, WeatherVM> {
  const WeatherToWeatherVMMapper(this._weatherIconProvider);

  final WeatherIconProvider _weatherIconProvider;

  @override
  WeatherVM map(Weather item) {
    return WeatherVM(
      description: item.description,
      smallIconPath: _weatherIconProvider.getSmallIconPath(item.type),
      bigIconPath: _weatherIconProvider.getBigIconPath(item.type),
    );
  }
}
