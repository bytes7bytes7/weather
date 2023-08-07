import 'package:injectable/injectable.dart';

import '../../domain/value_objects/temperature.dart';
import '../../utils/mapper.dart';
import '../dto/weather_info_response/weather_info_response.dart';

@LazySingleton(as: Mapper<WeatherInfoResponse, Temperature>)
class WeatherInfoResponseToTemperatureMapper
    extends Mapper<WeatherInfoResponse, Temperature> {
  const WeatherInfoResponseToTemperatureMapper();

  @override
  Temperature map(WeatherInfoResponse item) {
    return Temperature(
      min: item.minTemp,
      max: item.maxTemp,
      current: item.currentTemp,
    );
  }
}
