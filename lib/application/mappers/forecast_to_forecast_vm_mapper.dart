import 'package:injectable/injectable.dart';

import '../../domain/value_objects/value_objects.dart';
import '../../utils/mapper.dart';
import '../providers/date_time_string_provider.dart';
import '../providers/humidity_string_provider.dart';
import '../view_models/view_models.dart';

@LazySingleton(as: Mapper<Forecast, ForecastVM>)
class ForecastToForecastVMMapper extends Mapper<Forecast, ForecastVM> {
  const ForecastToForecastVMMapper(
    this._temperatureMapper,
    this._windMapper,
    this._weatherMapper,
    this._humidityStringProvider,
    this._dateTimeStringProvider,
  );

  final Mapper<Temperature, TemperatureVM> _temperatureMapper;
  final Mapper<Wind, WindVM> _windMapper;
  final Mapper<Weather, WeatherVM> _weatherMapper;
  final HumidityStringProvider _humidityStringProvider;
  final DateTimeStringProvider _dateTimeStringProvider;

  @override
  ForecastVM map(Forecast item) {
    return ForecastVM(
      relativeDate: _dateTimeStringProvider.getRelativeToNow(item.dateTime),
      date: _dateTimeStringProvider.getDate(item.dateTime),
      time: _dateTimeStringProvider.getTime(item.dateTime),
      temperature: _temperatureMapper.map(item.temperature),
      humidityPercent: '${item.humidity.toStringAsFixed(0)}%',
      humidity: _humidityStringProvider.getString(item.humidity),
      wind: _windMapper.map(item.wind),
      weather: _weatherMapper.map(item.weather),
    );
  }
}
