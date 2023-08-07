import 'package:injectable/injectable.dart';

import '../../domain/repositories/location_repository.dart';
import '../../domain/value_objects/location.dart';
import '../data_sources/location_data_source.dart';

@test
@prod
@LazySingleton(as: LocationRepository)
class ProdLocationRepository implements LocationRepository {
  const ProdLocationRepository(this._locationDataSource);

  final LocationDataSource _locationDataSource;

  @override
  Future<Location> getLocation() {
    return _locationDataSource.getLocation();
  }
}
