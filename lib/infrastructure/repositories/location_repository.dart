import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/location_repository.dart';
import '../../domain/value_objects/location.dart';
import '../data_sources/geocoding_data_source/geocoding_data_source.dart';
import '../data_sources/location_data_source.dart';
import '../dto/dto.dart';

const _locBoxName = 'location';
const _locCachedKey = 'cached_location';

@test
@prod
@LazySingleton(as: LocationRepository)
class ProdLocationRepository implements LocationRepository {
  ProdLocationRepository(
    this._locationDataSource,
    this._geocodingDataSource,
  );

  final LocationDataSource _locationDataSource;
  final GeocodingDataSource _geocodingDataSource;
  late final Box<String> _locBox;

  @PostConstruct(preResolve: true)
  @override
  Future<void> init() async {
    _locBox = await Hive.openBox(_locBoxName);
  }

  @override
  Future<Location> getLocation() {
    return _locationDataSource.getLocation();
  }

  @override
  Future<String> getLocationName(Location location) async {
    final request = PlaceRequest(
      longitude: location.longitude,
      latitude: location.latitude,
      format: 'json',
      language: 'ru',
    );

    final response = await _geocodingDataSource.reverse(request);

    final city = response.address.city;
    final country = response.address.country;

    final parts = [city, country]..removeWhere((e) => e == null);

    late String name;
    if (parts.isEmpty) {
      name = '?';
    } else {
      name = parts.join(', ');
    }

    await _locBox.put(_locCachedKey, name);

    return name;
  }

  @override
  Future<String?> getCachedLocationName() async {
    return _locBox.get(_locCachedKey);
  }
}
