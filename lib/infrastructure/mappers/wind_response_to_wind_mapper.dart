import 'package:injectable/injectable.dart';

import '../../domain/value_objects/wind.dart';
import '../../domain/value_objects/wind_direction.dart';
import '../../utils/mapper.dart';
import '../dto/wind_response/wind_response.dart';

@LazySingleton(as: Mapper<WindResponse, Wind>)
class WindResponseToWindMapper extends Mapper<WindResponse, Wind> {
  const WindResponseToWindMapper();

  @override
  Wind map(WindResponse item) {
    return Wind(
      speed: item.speed,
      direction: _fromDegree(item.degree),
    );
  }

  WindDirection _fromDegree(double degree) {
    if (degree > 337.5 || degree <= 22.5) {
      return WindDirection.north;
    }

    if (degree > 22.5 && degree <= 67.5) {
      return WindDirection.northEast;
    }

    if (degree > 67.5 && degree <= 112.5) {
      return WindDirection.east;
    }

    if (degree > 112.5 && degree <= 157.5) {
      return WindDirection.southEast;
    }

    if (degree > 157.5 && degree <= 202.5) {
      return WindDirection.south;
    }

    if (degree > 202.5 && degree <= 247.5) {
      return WindDirection.southWest;
    }

    if (degree > 247.5 && degree <= 292.5) {
      return WindDirection.west;
    }

    return WindDirection.northWest;
  }
}
