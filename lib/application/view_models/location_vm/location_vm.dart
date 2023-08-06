import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_vm.freezed.dart';

@freezed
class LocationVM with _$LocationVM {
  const factory LocationVM({
    required String description,
    required String latitude,
    required String longitude,
  }) = _LocationVM;
}
