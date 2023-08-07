// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i21;
import 'package:flutter/material.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/blocs/auth/auth_bloc.dart' as _i36;
import '../../application/blocs/forecast/forecast_bloc.dart' as _i37;
import '../../application/coordinators/auth_coordinator.dart' as _i24;
import '../../application/mappers/forecast_to_forecast_vm_mapper.dart' as _i33;
import '../../application/mappers/temperature_to_temperature_vm_mapper.dart'
    as _i12;
import '../../application/mappers/weather_to_weather_vm_mapper.dart' as _i15;
import '../../application/mappers/wind_to_wind_vm_mapper.dart' as _i19;
import '../../application/providers/date_time_string_provider.dart' as _i35;
import '../../application/providers/humidity_string_provider.dart' as _i34;
import '../../application/providers/weather_icon_provider.dart' as _i16;
import '../../application/providers/wind_direction_string_provider.dart'
    as _i20;
import '../../application/view_models/temperature_vm/temperature_vm.dart'
    as _i11;
import '../../application/view_models/view_models.dart' as _i32;
import '../../application/view_models/weather_vm/weather_vm.dart' as _i14;
import '../../application/view_models/wind_vm/wind_vm.dart' as _i18;
import '../../domain/entities/account.dart' as _i22;
import '../../domain/repositories/auth_repository.dart' as _i26;
import '../../domain/repositories/forecast_repository.dart' as _i4;
import '../../domain/repositories/location_repository.dart' as _i7;
import '../../domain/services/auth_service.dart' as _i29;
import '../../domain/services/forecast_service.dart' as _i30;
import '../../domain/value_objects/forecast.dart' as _i38;
import '../../domain/value_objects/temperature.dart' as _i10;
import '../../domain/value_objects/value_objects.dart' as _i31;
import '../../domain/value_objects/weather.dart' as _i13;
import '../../domain/value_objects/wind.dart' as _i17;
import '../../utils/mapper.dart' as _i9;
import '../coordinators/auth_coordinator.dart' as _i25;
import '../data_sources/data_sources.dart' as _i28;
import '../data_sources/firebase_data_source.dart' as _i3;
import '../mappers/user_to_account_mapper.dart' as _i23;
import '../modules/navigator_key_module.dart' as _i39;
import '../repositories/auth_repository.dart' as _i27;
import '../repositories/forecast_repository.dart' as _i5;
import '../repositories/location_repository.dart' as _i8;

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
  final navigatorKeyModule = _$NavigatorKeyModule();
  await gh.singletonAsync<_i3.FirebaseDataSource>(
    () {
      final i = _i3.FirebaseDataSource();
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.lazySingleton<_i4.ForecastRepository>(
    () => _i5.TestForecastRepository(),
    registerFor: {
      _test,
      _prod,
    },
  );
  gh.singleton<_i6.GlobalKey<_i6.NavigatorState>>(
      navigatorKeyModule.navigatorKey);
  gh.lazySingleton<_i7.LocationRepository>(
    () => _i8.TestLocationRepository(),
    registerFor: {
      _test,
      _prod,
    },
  );
  gh.lazySingleton<_i9.Mapper<_i10.Temperature, _i11.TemperatureVM>>(
      () => _i12.TemperatureToTemperatureVMMapper());
  gh.lazySingleton<_i9.Mapper<_i13.Weather, _i14.WeatherVM>>(
      () => _i15.WeatherToWeatherVMMapper(gh<_i16.WeatherIconProvider>()));
  gh.lazySingleton<_i9.Mapper<_i17.Wind, _i18.WindVM>>(
      () => _i19.WindToWindVMMapper(gh<_i20.WindDirectionStringProvider>()));
  gh.lazySingleton<_i9.Mapper<_i21.User, _i22.Account>>(
      () => _i23.UserToAccountMapper());
  gh.lazySingleton<_i24.AuthCoordinator>(
      () => _i25.ProdAuthCoordinator(gh<_i6.GlobalKey<_i6.NavigatorState>>()));
  gh.lazySingleton<_i26.AuthRepository>(
    () => _i27.ProdAuthRepository(
      gh<_i28.FirebaseDataSource>(),
      gh<_i9.Mapper<_i21.User, _i22.Account>>(),
    ),
    registerFor: {
      _test,
      _prod,
    },
  );
  await gh.singletonAsync<_i29.AuthService>(
    () {
      final i = _i29.AuthService(gh<_i26.AuthRepository>());
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i30.ForecastService>(_i30.ForecastService(
    gh<_i7.LocationRepository>(),
    gh<_i4.ForecastRepository>(),
  ));
  gh.lazySingleton<_i9.Mapper<_i31.Forecast, _i32.ForecastVM>>(
      () => _i33.ForecastToForecastVMMapper(
            gh<_i9.Mapper<_i31.Temperature, _i32.TemperatureVM>>(),
            gh<_i9.Mapper<_i31.Wind, _i32.WindVM>>(),
            gh<_i9.Mapper<_i31.Weather, _i32.WeatherVM>>(),
            gh<_i34.HumidityStringProvider>(),
            gh<_i35.DateTimeStringProvider>(),
          ));
  gh.singleton<_i36.AuthBloc>(_i36.AuthBloc(
    gh<_i29.AuthService>(),
    gh<_i24.AuthCoordinator>(),
  ));
  gh.factory<_i37.ForecastBloc>(() => _i37.ForecastBloc(
        gh<_i30.ForecastService>(),
        gh<_i9.Mapper<_i38.Forecast, _i32.ForecastVM>>(),
      ));
  return getIt;
}

class _$NavigatorKeyModule extends _i39.NavigatorKeyModule {}
