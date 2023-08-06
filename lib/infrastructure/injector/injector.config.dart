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

import '../../application/blocs/auth/auth_bloc.dart' as _i10;
import '../../domain/repositories/auth_repository.dart' as _i3;
import '../../domain/repositories/forecast_repository.dart' as _i6;
import '../../domain/repositories/location_repository.dart' as _i8;
import '../../domain/services/auth_service.dart' as _i5;
import '../../domain/services/forecast_service.dart' as _i11;
import '../repositories/auth_repository.dart' as _i4;
import '../repositories/forecast_repository.dart' as _i7;
import '../repositories/location_repository.dart' as _i9;

const String _test = 'test';
const String _prod = 'prod';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.AuthRepository>(
    () => _i4.TestAuthRepository(),
    registerFor: {
      _test,
      _prod,
    },
  );
  gh.singleton<_i5.AuthService>(_i5.AuthService(gh<_i3.AuthRepository>()));
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
  gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(gh<_i5.AuthService>()));
  gh.singleton<_i11.ForecastService>(_i11.ForecastService(
    gh<_i8.LocationRepository>(),
    gh<_i6.ForecastRepository>(),
  ));
  return getIt;
}
