import '../value_objects/location.dart';

abstract class LocationRepository {
  const LocationRepository();

  Future<void> init();

  Future<Location> getLocation();

  Future<String> getLocationName(Location location);

  Future<String?> getCachedLocationName();
}
