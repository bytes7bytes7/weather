import 'package:injectable/injectable.dart';

import '../../domain/value_objects/wind.dart';
import '../../utils/mapper.dart';
import '../providers/wind_direction_string_provider.dart';
import '../view_models/wind_vm/wind_vm.dart';

@LazySingleton(as: Mapper<Wind, WindVM>)
class WindToWindVMMapper extends Mapper<Wind, WindVM> {
  const WindToWindVMMapper(this._windDirectionStringProvider);

  final WindDirectionStringProvider _windDirectionStringProvider;

  @override
  WindVM map(Wind item) {
    late final String speed;
    final fixed = item.speed.toStringAsFixed(1);
    if (fixed.endsWith('.0')) {
      speed = item.speed.toStringAsFixed(0);
    } else {
      speed = fixed;
    }

    return WindVM(
      speed: speed,
      direction: _windDirectionStringProvider.getString(item.direction),
    );
  }
}
