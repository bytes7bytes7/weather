import 'package:injectable/injectable.dart';

import '../../domain/value_objects/temperature.dart';
import '../../utils/mapper.dart';
import '../providers/temperature_string_provider.dart';
import '../view_models/temperature_vm/temperature_vm.dart';

@LazySingleton(as: Mapper<Temperature, TemperatureVM>)
class TemperatureToTemperatureVMMapper
    extends Mapper<Temperature, TemperatureVM> {
  const TemperatureToTemperatureVMMapper(this._temperatureStringProvider);

  final TemperatureStringProvider _temperatureStringProvider;

  @override
  TemperatureVM map(Temperature item) {
    return TemperatureVM(
      min: '${item.min.toStringAsFixed(0)}º',
      max: '${item.max.toStringAsFixed(0)}º',
      minMax: _temperatureStringProvider.getMinMaxString(item.min, item.max),
      current: '${item.current.toStringAsFixed(0)}º',
    );
  }
}
