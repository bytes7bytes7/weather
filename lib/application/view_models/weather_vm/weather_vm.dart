import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_vm.freezed.dart';

@freezed
class WeatherVM with _$WeatherVM {
  const factory WeatherVM({
    required String description,
    required String smallIconPath,
    required String bigIconPath,
  }) = _WeatherVM;
}
