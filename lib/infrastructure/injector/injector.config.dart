// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/repositories/auth_repository.dart' as _i3;
import '../../domain/repositories/forecast_repository.dart' as _i6;
import '../../domain/repositories/location_repository.dart' as _i8;
import '../data_sources/data_sources.dart' as _i10;
import '../data_sources/firebase_data_source.dart' as _i5;
import '../repositories/auth_repository.dart' as _i4;
import '../repositories/forecast_repository.dart' as _i7;
import '../repositories/location_repository.dart' as _i9;

const String _test = 'test';
const String _prod = 'prod';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.AuthRepository>(
    () => _i4.TestAuthRepository(),
    registerFor: {_test},
  );
  await gh.singletonAsync<_i5.FirebaseDataSource>(
    () {
      final i = _i5.FirebaseDataSource();
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.lazySingleton<_i6.ForecastRepository>(
    () => _i7.TestForecastRepository(),
    registerFor: {
      _test,
      _prod,
    },
  );
  gh.lazySingleton<_i8.LocationRepository>(
    () => _i9.TestLocationRepository(),
    registerFor: {
      _test,
      _prod,
    },
  );
  gh.lazySingleton<_i3.AuthRepository>(
    () => _i4.ProdAuthRepository(gh<_i10.FirebaseDataSource>()),
    registerFor: {_prod},
  );
  return getIt;
}
