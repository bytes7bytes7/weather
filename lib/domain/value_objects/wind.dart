import 'wind_direction.dart';

class Wind {
  const Wind({
    required this.speed,
    required this.direction,
  });

  final double speed;
  final WindDirection direction;
}
