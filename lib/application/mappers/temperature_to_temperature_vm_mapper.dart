import 'package:injectable/injectable.dart';

import '../../domain/value_objects/temperature.dart';
import '../../utils/mapper.dart';
import '../view_models/temperature_vm/temperature_vm.dart';

@LazySingleton(as: Mapper<Temperature, TemperatureVM>)
class TemperatureToTemperatureVMMapper
    extends Mapper<Temperature, TemperatureVM> {
  const TemperatureToTemperatureVMMapper();

  @override
  TemperatureVM map(Temperature item) {
    return TemperatureVM(
      min: '${item.min.toStringAsFixed(0)}º',
      max: '${item.max.toStringAsFixed(0)}º',
      current: '${item.current.toStringAsFixed(0)}º',
    );
  }
}
