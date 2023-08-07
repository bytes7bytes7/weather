import 'package:injectable/injectable.dart';

import '../../application/application.dart';
import '../../domain/value_objects/wind_direction.dart';

@LazySingleton(as: WindDirectionStringProvider)
class ProdWindDirectionStringProvider extends WindDirectionStringProvider {
  const ProdWindDirectionStringProvider();

  @override
  String getString(WindDirection windDirection) {
    switch (windDirection) {
      case WindDirection.north:
        return 'Ветер северный';

      case WindDirection.northEast:
        return 'Ветер северо-восточный';

      case WindDirection.east:
        return 'Ветер восточный';

      case WindDirection.southEast:
        return 'Ветер юго-восточный';

      case WindDirection.south:
        return 'Ветер южный';

      case WindDirection.southWest:
        return 'Ветер юго-западный';

      case WindDirection.west:
        return 'Ветер западный';

      case WindDirection.northWest:
        return 'Ветер северо-западный';
    }
  }
}
