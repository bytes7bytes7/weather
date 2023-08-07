// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i25;
import 'package:flutter/material.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/application.dart' as _i3;
import '../../application/blocs/auth/auth_bloc.dart' as _i40;
import '../../application/blocs/forecast/forecast_bloc.dart' as _i42;
import '../../application/coordinators/auth_coordinator.dart' as _i28;
import '../../application/mappers/forecast_to_forecast_vm_mapper.dart' as _i37;
import '../../application/mappers/temperature_to_temperature_vm_mapper.dart'
    as _i16;
import '../../application/mappers/weather_to_weather_vm_mapper.dart' as _i19;
import '../../application/mappers/wind_to_wind_vm_mapper.dart' as _i23;
import '../../application/providers/auth_exception_string_provider.dart'
    as _i41;
import '../../application/providers/date_time_string_provider.dart' as _i39;
import '../../application/providers/humidity_string_provider.dart' as _i38;
import '../../application/providers/weather_icon_provider.dart' as _i20;
import '../../application/providers/wind_direction_string_provider.dart'
    as _i24;
import '../../application/view_models/temperature_vm/temperature_vm.dart'
    as _i15;
import '../../application/view_models/view_models.dart' as _i36;
import '../../application/view_models/weather_vm/weather_vm.dart' as _i18;
import '../../application/view_models/wind_vm/wind_vm.dart' as _i22;
import '../../domain/entities/account.dart' as _i26;
import '../../domain/repositories/auth_repository.dart' as _i30;
import '../../domain/repositories/forecast_repository.dart' as _i7;
import '../../domain/repositories/location_repository.dart' as _i11;
import '../../domain/services/auth_service.dart' as _i33;
import '../../domain/services/forecast_service.dart' as _i34;
import '../../domain/value_objects/forecast.dart' as _i43;
import '../../domain/value_objects/temperature.dart' as _i14;
import '../../domain/value_objects/value_objects.dart' as _i35;
import '../../domain/value_objects/weather.dart' as _i17;
import '../../domain/value_objects/wind.dart' as _i21;
import '../../utils/mapper.dart' as _i13;
import '../coordinators/auth_coordinator.dart' as _i29;
import '../data_sources/data_sources.dart' as _i32;
import '../data_sources/firebase_data_source.dart' as _i6;
import '../data_sources/open_weather_data_source.dart' as _i9;
import '../mappers/user_to_account_mapper.dart' as _i27;
import '../modules/dio_module.dart' as _i44;
import '../modules/navigator_key_module.dart' as _i45;
import '../providers/auth_exception_string_provider.dart' as _i4;
import '../repositories/auth_repository.dart' as _i31;
import '../repositories/forecast_repository.dart' as _i8;
import '../repositories/location_repository.dart' as _i12;

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
  final dioModule = _$DioModule();
  final navigatorKeyModule = _$NavigatorKeyModule();
  gh.lazySingleton<_i3.AuthExceptionStringProvider>(
      () => _i4.ProdAuthExceptionStringProvider());
  gh.lazySingleton<_i5.Dio>(() => dioModule.dio);
  await gh.lazySingletonAsync<_i6.FirebaseDataSource>(
    () {
      final i = _i6.FirebaseDataSource();
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.lazySingleton<_i7.ForecastRepository>(
    () => _i8.ProdForecastRepository(gh<_i9.OpenWeatherDataSource>()),
    registerFor: {_prod},
  );
  gh.singleton<_i10.GlobalKey<_i10.NavigatorState>>(
      navigatorKeyModule.navigatorKey);
  gh.lazySingleton<_i11.LocationRepository>(
    () => _i12.TestLocationRepository(),
    registerFor: {
      _test,
      _prod,
    },
  );
  gh.lazySingleton<_i13.Mapper<_i14.Temperature, _i15.TemperatureVM>>(
      () => _i16.TemperatureToTemperatureVMMapper());
  gh.lazySingleton<_i13.Mapper<_i17.Weather, _i18.WeatherVM>>(
      () => _i19.WeatherToWeatherVMMapper(gh<_i20.WeatherIconProvider>()));
  gh.lazySingleton<_i13.Mapper<_i21.Wind, _i22.WindVM>>(
      () => _i23.WindToWindVMMapper(gh<_i24.WindDirectionStringProvider>()));
  gh.lazySingleton<_i13.Mapper<_i25.User, _i26.Account>>(
      () => _i27.UserToAccountMapper());
  gh.lazySingleton<_i28.AuthCoordinator>(() =>
      _i29.ProdAuthCoordinator(gh<_i10.GlobalKey<_i10.NavigatorState>>()));
  gh.lazySingleton<_i30.AuthRepository>(
    () => _i31.ProdAuthRepository(
      gh<_i32.FirebaseDataSource>(),
      gh<_i13.Mapper<_i25.User, _i26.Account>>(),
    ),
    registerFor: {
      _test,
      _prod,
    },
  );
  await gh.singletonAsync<_i33.AuthService>(
    () {
      final i = _i33.AuthService(gh<_i30.AuthRepository>());
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i34.ForecastService>(_i34.ForecastService(
    gh<_i11.LocationRepository>(),
    gh<_i7.ForecastRepository>(),
  ));
  gh.lazySingleton<_i13.Mapper<_i35.Forecast, _i36.ForecastVM>>(
      () => _i37.ForecastToForecastVMMapper(
            gh<_i13.Mapper<_i35.Temperature, _i36.TemperatureVM>>(),
            gh<_i13.Mapper<_i35.Wind, _i36.WindVM>>(),
            gh<_i13.Mapper<_i35.Weather, _i36.WeatherVM>>(),
            gh<_i38.HumidityStringProvider>(),
            gh<_i39.DateTimeStringProvider>(),
          ));
  gh.singleton<_i40.AuthBloc>(_i40.AuthBloc(
    gh<_i33.AuthService>(),
    gh<_i28.AuthCoordinator>(),
    gh<_i41.AuthExceptionStringProvider>(),
  ));
  gh.factory<_i42.ForecastBloc>(() => _i42.ForecastBloc(
        gh<_i34.ForecastService>(),
        gh<_i13.Mapper<_i43.Forecast, _i36.ForecastVM>>(),
      ));
  return getIt;
}

class _$DioModule extends _i44.DioModule {}

class _$NavigatorKeyModule extends _i45.NavigatorKeyModule {}
