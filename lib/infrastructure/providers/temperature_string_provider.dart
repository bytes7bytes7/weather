import 'package:injectable/injectable.dart';

import '../../application/providers/temperature_string_provider.dart';

@LazySingleton(as: TemperatureStringProvider)
class ProdTemperatureStringProvider implements TemperatureStringProvider {
  const ProdTemperatureStringProvider();

  @override
  String getMinMaxString(double min, double max) {
    return 'Макс: ${max.toStringAsFixed(0)}º Мин: ${min.toStringAsFixed(0)}º';
  }
}
