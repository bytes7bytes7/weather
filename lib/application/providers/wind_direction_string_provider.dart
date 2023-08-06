import '../../domain/value_objects/wind_direction.dart';

abstract class WindDirectionStringProvider {
  const WindDirectionStringProvider();

  String getString(WindDirection windDirection);
}
