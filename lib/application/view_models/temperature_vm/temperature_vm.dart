import 'package:freezed_annotation/freezed_annotation.dart';

part 'temperature_vm.freezed.dart';

@freezed
class TemperatureVM with _$TemperatureVM {
  const factory TemperatureVM({
    required String min,
    required String max,
    required String current,
    required String minMax,
  }) = _TemperatureVM;
}
