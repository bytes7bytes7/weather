import '../value_objects/location.dart';

abstract class LocationRepository {
  const LocationRepository();

  Future<Location> getLocation();
}
