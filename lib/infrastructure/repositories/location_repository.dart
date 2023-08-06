import 'package:injectable/injectable.dart';

import '../../domain/repositories/location_repository.dart';
import '../../domain/value_objects/location.dart';

@test
@prod
@LazySingleton(as: LocationRepository)
class TestLocationRepository implements LocationRepository {
  const TestLocationRepository();

  @override
  Future<Location> getLocation() {
    return Future.delayed(const Duration(seconds: 1), () {
      return const Location(latitude: 35.135486, longitude: 45.023164);
    });
  }
}
