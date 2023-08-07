import 'package:injectable/injectable.dart';
import 'package:location/location.dart' as loc;

import '../../domain/exceptions/exceptions.dart';
import '../../domain/value_objects/location.dart';

@lazySingleton
class LocationDataSource {
  final _loc = loc.Location();

  Future<Location> getLocation() async {
    bool serviceEnabled;
    loc.PermissionStatus permissionGranted;

    serviceEnabled = await _loc.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _loc.requestService();
      if (!serviceEnabled) {
        throw const LocationServiceDisabledException();
      }
    }

    permissionGranted = await _loc.hasPermission();
    if (permissionGranted == loc.PermissionStatus.denied) {
      permissionGranted = await _loc.requestPermission();
      if (permissionGranted != loc.PermissionStatus.granted) {
        throw const NoLocationPermissionException();
      }
    }

    final data = await _loc.getLocation();

    return Location(
      latitude: data.latitude!,
      longitude: data.longitude!,
    );
  }
}
