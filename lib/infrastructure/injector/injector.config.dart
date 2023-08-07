// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i9;
import 'package:firebase_auth/firebase_auth.dart' as _i27;
import 'package:flutter/material.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/application.dart' as _i4;
import '../../application/blocs/auth/auth_bloc.dart' as _i66;
import '../../application/blocs/forecast/forecast_bloc.dart' as _i68;
import '../../application/blocs/splash/splash_bloc.dart' as _i65;
import '../../application/coordinators/auth_coordinator.dart' as _i42;
import '../../application/mappers/forecast_to_forecast_vm_mapper.dart' as _i62;
import '../../application/mappers/temperature_to_temperature_vm_mapper.dart'
    as _i60;
import '../../application/mappers/weather_to_weather_vm_mapper.dart' as _i57;
import '../../application/mappers/wind_to_wind_vm_mapper.dart' as _i54;
import '../../application/providers/auth_exception_string_provider.dart'
    as _i67;
import '../../application/providers/date_time_provider.dart' as _i6;
import '../../application/providers/date_time_string_provider.dart' as _i64;
import '../../application/providers/forecast_exception_string_provider.dart'
    as _i69;
import '../../application/providers/humidity_string_provider.dart' as _i63;
import '../../application/providers/splash_string_provider.dart' as _i34;
import '../../application/providers/temperature_string_provider.dart' as _i36;
import '../../application/providers/weather_icon_provider.dart' as _i58;
import '../../application/providers/wind_direction_string_provider.dart'
    as _i55;
import '../../application/providers/wind_string_provider.dart' as _i40;
import '../../application/view_models/temperature_vm/temperature_vm.dart'
    as _i59;
import '../../application/view_models/view_models.dart' as _i61;
import '../../application/view_models/weather_vm/weather_vm.dart' as _i56;
import '../../application/view_models/wind_vm/wind_vm.dart' as _i53;
import '../../domain/entities/account.dart' as _i28;
import '../../domain/repositories/auth_repository.dart' as _i44;
import '../../domain/repositories/forecast_repository.dart' as _i48;
import '../../domain/repositories/location_repository.dart' as _i15;
import '../../domain/services/auth_service.dart' as _i47;
import '../../domain/services/forecast_service.dart' as _i52;
import '../../domain/value_objects/forecast.dart' as _i31;
import '../../domain/value_objects/temperature.dart' as _i19;
import '../../domain/value_objects/value_objects.dart' as _i51;
import '../../domain/value_objects/weather.dart' as _i22;
import '../../domain/value_objects/wind.dart' as _i25;
import '../../utils/mapper.dart' as _i17;
import '../coordinators/auth_coordinator.dart' as _i43;
import '../data_sources/data_sources.dart' as _i46;
import '../data_sources/firebase_data_source.dart' as _i10;
import '../data_sources/location_data_source.dart' as _i14;
import '../data_sources/open_weather/open_weather_data_source.dart' as _i33;
import '../dto/dto.dart' as _i50;
import '../dto/forecast_response/forecast_response.dart' as _i30;
import '../dto/weather_info_response/weather_info_response.dart' as _i18;
import '../dto/weather_response/weather_response.dart' as _i21;
import '../dto/wind_response/wind_response.dart' as _i24;
import '../mappers/forecast_response_to_forecast_mapper.dart' as _i32;
import '../mappers/user_to_account_mapper.dart' as _i29;
import '../mappers/weather_info_response_to_temperature_mapper.dart' as _i20;
import '../mappers/weather_response_to_weather_mapper.dart' as _i23;
import '../mappers/wind_response_to_wind_mapper.dart' as _i26;
import '../modules/dio_module.dart' as _i70;
import '../modules/hive_module.dart' as _i3;
import '../modules/navigator_key_module.dart' as _i71;
import '../providers/auth_exception_string_provider.dart' as _i5;
import '../providers/date_time_provider.dart' as _i7;
import '../providers/date_time_string_provider.dart' as _i8;
import '../providers/forecast_exception_string_provider.dart' as _i11;
import '../providers/humidity_string_provider.dart' as _i13;
import '../providers/splash_string_provider.dart' as _i35;
import '../providers/temperature_string_provider.dart' as _i37;
import '../providers/weather_icon_provider.dart' as _i38;
import '../providers/wind_direction_string_provider.dart' as _i39;
import '../providers/wind_string_provider.dart' as _i41;
import '../repositories/auth_repository.dart' as _i45;
import '../repositories/forecast_repository.dart' as _i49;
import '../repositories/location_repository.dart' as _i16;

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
  await gh.singletonAsync<_i3.HideModule>(
    () {
      final i = _i3.HideModule();
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.lazySingleton<_i4.AuthExceptionStringProvider>(
      () => _i5.ProdAuthExceptionStringProvider());
  gh.lazySingleton<_i6.DateTimeProvider>(() => _i7.ProdDateTimeProvider());
  gh.lazySingleton<_i4.DateTimeStringProvider>(
      () => _i8.ProdDateTimeStringProvider(gh<_i4.DateTimeProvider>()));
  gh.lazySingleton<_i9.Dio>(() => dioModule.dio);
  await gh.lazySingletonAsync<_i10.FirebaseDataSource>(
    () {
      final i = _i10.FirebaseDataSource();
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.lazySingleton<_i4.ForecastExceptionStringProvider>(
      () => _i11.ProdForecastExceptionStringProvider());
  gh.singleton<_i12.GlobalKey<_i12.NavigatorState>>(
      navigatorKeyModule.navigatorKey);
  gh.lazySingleton<_i4.HumidityStringProvider>(
      () => _i13.ProdHumidityStringProvider());
  gh.lazySingleton<_i14.LocationDataSource>(() => _i14.LocationDataSource());
  gh.lazySingleton<_i15.LocationRepository>(
    () => _i16.ProdLocationRepository(gh<_i14.LocationDataSource>()),
    registerFor: {
      _test,
      _prod,
    },
  );
  gh.lazySingleton<_i17.Mapper<_i18.WeatherInfoResponse, _i19.Temperature>>(
      () => _i20.WeatherInfoResponseToTemperatureMapper());
  gh.lazySingleton<_i17.Mapper<_i21.WeatherResponse, _i22.Weather>>(
      () => _i23.WeatherResponseToWeatherMapper());
  gh.lazySingleton<_i17.Mapper<_i24.WindResponse, _i25.Wind>>(
      () => _i26.WindResponseToWindMapper());
  gh.lazySingleton<_i17.Mapper<_i27.User, _i28.Account>>(
      () => _i29.UserToAccountMapper());
  gh.lazySingleton<_i17.Mapper<_i30.ForecastResponse, _i31.Forecast>>(
      () => _i32.ForecastResponseToForecastMapper(
            gh<_i17.Mapper<_i24.WindResponse, _i25.Wind>>(),
            gh<_i17.Mapper<_i21.WeatherResponse, _i22.Weather>>(),
            gh<_i17.Mapper<_i18.WeatherInfoResponse, _i19.Temperature>>(),
          ));
  gh.lazySingleton<_i33.OpenWeatherDataSource>(
      () => _i33.OpenWeatherDataSource(gh<_i9.Dio>()));
  gh.lazySingleton<_i34.SplashStringProvider>(
      () => _i35.ProdSplashStringProvider());
  gh.lazySingleton<_i36.TemperatureStringProvider>(
      () => _i37.ProdTemperatureStringProvider());
  gh.lazySingleton<_i4.WeatherIconProvider>(
      () => _i38.ProdWeatherIconProvider());
  gh.lazySingleton<_i4.WindDirectionStringProvider>(
      () => _i39.ProdWindDirectionStringProvider());
  gh.lazySingleton<_i40.WindStringProvider>(
      () => _i41.ProdWindStringProvider());
  gh.lazySingleton<_i42.AuthCoordinator>(() =>
      _i43.ProdAuthCoordinator(gh<_i12.GlobalKey<_i12.NavigatorState>>()));
  gh.lazySingleton<_i44.AuthRepository>(
    () => _i45.ProdAuthRepository(
      gh<_i46.FirebaseDataSource>(),
      gh<_i17.Mapper<_i27.User, _i28.Account>>(),
    ),
    registerFor: {
      _test,
      _prod,
    },
  );
  await gh.singletonAsync<_i47.AuthService>(
    () {
      final i = _i47.AuthService(gh<_i44.AuthRepository>());
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  await gh.lazySingletonAsync<_i48.ForecastRepository>(
    () {
      final i = _i49.ProdForecastRepository(
        gh<_i33.OpenWeatherDataSource>(),
        gh<_i17.Mapper<_i50.ForecastResponse, _i51.Forecast>>(),
      );
      return i.init().then((_) => i);
    },
    registerFor: {_prod},
    preResolve: true,
  );
  gh.singleton<_i52.ForecastService>(_i52.ForecastService(
    gh<_i15.LocationRepository>(),
    gh<_i48.ForecastRepository>(),
  ));
  gh.lazySingleton<_i17.Mapper<_i25.Wind, _i53.WindVM>>(
      () => _i54.WindToWindVMMapper(
            gh<_i55.WindDirectionStringProvider>(),
            gh<_i40.WindStringProvider>(),
          ));
  gh.lazySingleton<_i17.Mapper<_i22.Weather, _i56.WeatherVM>>(
      () => _i57.WeatherToWeatherVMMapper(gh<_i58.WeatherIconProvider>()));
  gh.lazySingleton<_i17.Mapper<_i19.Temperature, _i59.TemperatureVM>>(() =>
      _i60.TemperatureToTemperatureVMMapper(
          gh<_i36.TemperatureStringProvider>()));
  gh.lazySingleton<_i17.Mapper<_i51.Forecast, _i61.ForecastVM>>(
      () => _i62.ForecastToForecastVMMapper(
            gh<_i17.Mapper<_i51.Temperature, _i61.TemperatureVM>>(),
            gh<_i17.Mapper<_i51.Wind, _i61.WindVM>>(),
            gh<_i17.Mapper<_i51.Weather, _i61.WeatherVM>>(),
            gh<_i63.HumidityStringProvider>(),
            gh<_i64.DateTimeStringProvider>(),
          ));
  gh.factory<_i65.SplashBloc>(() => _i65.SplashBloc(
        gh<_i34.SplashStringProvider>(),
        gh<_i6.DateTimeProvider>(),
      ));
  gh.singleton<_i66.AuthBloc>(_i66.AuthBloc(
    gh<_i47.AuthService>(),
    gh<_i42.AuthCoordinator>(),
    gh<_i67.AuthExceptionStringProvider>(),
  ));
  gh.factory<_i68.ForecastBloc>(() => _i68.ForecastBloc(
        gh<_i52.ForecastService>(),
        gh<_i69.ForecastExceptionStringProvider>(),
        gh<_i17.Mapper<_i31.Forecast, _i61.ForecastVM>>(),
      ));
  return getIt;
}

class _$DioModule extends _i70.DioModule {}

class _$NavigatorKeyModule extends _i71.NavigatorKeyModule {}
