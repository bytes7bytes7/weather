import 'package:freezed_annotation/freezed_annotation.dart';

import '../temperature_vm/temperature_vm.dart';
import '../weather_vm/weather_vm.dart';
import '../wind_vm/wind_vm.dart';

part 'forecast_vm.freezed.dart';

@freezed
class ForecastVM with _$ForecastVM {
  const factory ForecastVM({
    required String relativeDate,
    required String date,
    required String time,
    required TemperatureVM temperature,
    required String humidity,
    required WindVM wind,
    required WeatherVM weather,
  }) = _ForecastVM;
}
