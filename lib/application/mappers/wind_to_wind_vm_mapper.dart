import 'package:injectable/injectable.dart';

import '../../domain/value_objects/wind.dart';
import '../../utils/mapper.dart';
import '../providers/wind_direction_string_provider.dart';
import '../providers/wind_string_provider.dart';
import '../view_models/wind_vm/wind_vm.dart';

@LazySingleton(as: Mapper<Wind, WindVM>)
class WindToWindVMMapper extends Mapper<Wind, WindVM> {
  const WindToWindVMMapper(
    this._windDirectionStringProvider,
    this._windStringProvider,
  );

  final WindDirectionStringProvider _windDirectionStringProvider;
  final WindStringProvider _windStringProvider;

  @override
  WindVM map(Wind item) {
    return WindVM(
      speed: _windStringProvider.getSpeed(item.speed),
      direction: _windDirectionStringProvider.getString(item.direction),
    );
  }
}
