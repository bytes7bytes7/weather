import 'package:injectable/injectable.dart';

import '../../application/application.dart';

@LazySingleton(as: HumidityStringProvider)
class ProdHumidityStringProvider implements HumidityStringProvider {
  const ProdHumidityStringProvider();

  @override
  String getString(double humidity) {
    if (humidity < 40) {
      return 'Низкая влажность';
    }

    if (humidity >= 40 && humidity < 70) {
      return 'Умеренная влажность';
    }

    return 'Высокая влажность';
  }
}
