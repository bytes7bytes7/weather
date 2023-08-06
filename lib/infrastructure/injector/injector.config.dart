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

import '../../application/blocs/auth/auth_bloc.dart' as _i22;
import '../../application/blocs/forecast/forecast_bloc.dart' as _i24;
import '../../application/mappers/temperature_to_temperature_vm_mapper.dart'
    as _i21;
import '../../application/mappers/weather_to_weather_vm_mapper.dart' as _i13;
import '../../application/mappers/wind_to_wind_vm_mapper.dart' as _i17;
import '../../application/providers/weather_icon_provider.dart' as _i14;
import '../../application/providers/wind_direction_string_provider.dart'
    as _i18;
import '../../application/view_models/temperature_vm/temperature_vm.dart'
    as _i20;
import '../../application/view_models/weather_vm/weather_vm.dart' as _i12;
import '../../application/view_models/wind_vm/wind_vm.dart' as _i16;
import '../../domain/repositories/auth_repository.dart' as _i3;
import '../../domain/repositories/forecast_repository.dart' as _i6;
import '../../domain/repositories/location_repository.dart' as _i8;
import '../../domain/services/auth_service.dart' as _i5;
import '../../domain/services/forecast_service.dart' as _i23;
import '../../domain/value_objects/temperature.dart' as _i19;
import '../../domain/value_objects/weather.dart' as _i11;
import '../../domain/value_objects/wind.dart' as _i15;
import '../../utils/mapper.dart' as _i10;
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
  gh.lazySingleton<_i10.Mapper<_i11.Weather, _i12.WeatherVM>>(
      () => _i13.WeatherToWeatherVMMapper(gh<_i14.WeatherIconProvider>()));
  gh.lazySingleton<_i10.Mapper<_i15.Wind, _i16.WindVM>>(
      () => _i17.WindToWindVMMapper(gh<_i18.WindDirectionStringProvider>()));
  gh.lazySingleton<_i10.Mapper<_i19.Temperature, _i20.TemperatureVM>>(
      () => _i21.TemperatureToTemperatureVMMapper());
  gh.factory<_i22.AuthBloc>(() => _i22.AuthBloc(gh<_i5.AuthService>()));
  gh.singleton<_i23.ForecastService>(_i23.ForecastService(
    gh<_i8.LocationRepository>(),
    gh<_i6.ForecastRepository>(),
  ));
  gh.factory<_i24.ForecastBloc>(
      () => _i24.ForecastBloc(gh<_i23.ForecastService>()));
  return getIt;
}
