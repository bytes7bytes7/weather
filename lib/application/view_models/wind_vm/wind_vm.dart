import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind_vm.freezed.dart';

@freezed
class WindVM with _$WindVM {
  const factory WindVM({
    required String speed,
    required String direction,
  }) = _WindVM;
}
