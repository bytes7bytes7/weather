// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i9;
import 'package:firebase_auth/firebase_auth.dart' as _i28;
import 'package:flutter/material.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/application.dart' as _i4;
import '../../application/blocs/auth/auth_bloc.dart' as _i67;
import '../../application/blocs/forecast/forecast_bloc.dart' as _i69;
import '../../application/blocs/splash/splash_bloc.dart' as _i66;
import '../../application/coordinators/auth_coordinator.dart' as _i43;
import '../../application/mappers/forecast_to_forecast_vm_mapper.dart' as _i63;
import '../../application/mappers/temperature_to_temperature_vm_mapper.dart'
    as _i61;
import '../../application/mappers/weather_to_weather_vm_mapper.dart' as _i58;
import '../../application/mappers/wind_to_wind_vm_mapper.dart' as _i55;
import '../../application/providers/auth_exception_string_provider.dart'
    as _i68;
import '../../application/providers/date_time_provider.dart' as _i6;
import '../../application/providers/date_time_string_provider.dart' as _i65;
import '../../application/providers/forecast_exception_string_provider.dart'
    as _i70;
import '../../application/providers/humidity_string_provider.dart' as _i64;
import '../../application/providers/splash_string_provider.dart' as _i35;
import '../../application/providers/temperature_string_provider.dart' as _i37;
import '../../application/providers/weather_icon_provider.dart' as _i59;
import '../../application/providers/wind_direction_string_provider.dart'
    as _i56;
import '../../application/providers/wind_string_provider.dart' as _i41;
import '../../application/view_models/temperature_vm/temperature_vm.dart'
    as _i60;
import '../../application/view_models/view_models.dart' as _i62;
import '../../application/view_models/weather_vm/weather_vm.dart' as _i57;
import '../../application/view_models/wind_vm/wind_vm.dart' as _i54;
import '../../domain/entities/account.dart' as _i29;
import '../../domain/repositories/auth_repository.dart' as _i45;
import '../../domain/repositories/forecast_repository.dart' as _i49;
import '../../domain/repositories/location_repository.dart' as _i16;
import '../../domain/services/auth_service.dart' as _i48;
import '../../domain/services/forecast_service.dart' as _i53;
import '../../domain/value_objects/forecast.dart' as _i32;
import '../../domain/value_objects/temperature.dart' as _i20;
import '../../domain/value_objects/value_objects.dart' as _i52;
import '../../domain/value_objects/weather.dart' as _i23;
import '../../domain/value_objects/wind.dart' as _i26;
import '../../utils/mapper.dart' as _i18;
import '../coordinators/auth_coordinator.dart' as _i44;
import '../data_sources/data_sources.dart' as _i47;
import '../data_sources/firebase_data_source.dart' as _i10;
import '../data_sources/geocoding_data_source/geocoding_data_source.dart'
    as _i12;
import '../data_sources/location_data_source.dart' as _i15;
import '../data_sources/open_weather/open_weather_data_source.dart' as _i34;
import '../dto/dto.dart' as _i51;
import '../dto/forecast_response/forecast_response.dart' as _i31;
import '../dto/weather_info_response/weather_info_response.dart' as _i19;
import '../dto/weather_response/weather_response.dart' as _i22;
import '../dto/wind_response/wind_response.dart' as _i25;
import '../mappers/forecast_response_to_forecast_mapper.dart' as _i33;
import '../mappers/user_to_account_mapper.dart' as _i30;
import '../mappers/weather_info_response_to_temperature_mapper.dart' as _i21;
import '../mappers/weather_response_to_weather_mapper.dart' as _i24;
import '../mappers/wind_response_to_wind_mapper.dart' as _i27;
import '../modules/dio_module.dart' as _i71;
import '../modules/hive_module.dart' as _i3;
import '../modules/navigator_key_module.dart' as _i72;
import '../providers/auth_exception_string_provider.dart' as _i5;
import '../providers/date_time_provider.dart' as _i7;
import '../providers/date_time_string_provider.dart' as _i8;
import '../providers/forecast_exception_string_provider.dart' as _i11;
import '../providers/humidity_string_provider.dart' as _i14;
import '../providers/splash_string_provider.dart' as _i36;
import '../providers/temperature_string_provider.dart' as _i38;
import '../providers/weather_icon_provider.dart' as _i39;
import '../providers/wind_direction_string_provider.dart' as _i40;
import '../providers/wind_string_provider.dart' as _i42;
import '../repositories/auth_repository.dart' as _i46;
import '../repositories/forecast_repository.dart' as _i50;
import '../repositories/location_repository.dart' as _i17;

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
  gh.lazySingleton<_i12.GeocodingDataSource>(
      () => _i12.GeocodingDataSource(gh<_i9.Dio>()));
  gh.singleton<_i13.GlobalKey<_i13.NavigatorState>>(
      navigatorKeyModule.navigatorKey);
  gh.lazySingleton<_i4.HumidityStringProvider>(
      () => _i14.ProdHumidityStringProvider());
  gh.lazySingleton<_i15.LocationDataSource>(() => _i15.LocationDataSource());
  await gh.lazySingletonAsync<_i16.LocationRepository>(
    () {
      final i = _i17.ProdLocationRepository(
        gh<_i15.LocationDataSource>(),
        gh<_i12.GeocodingDataSource>(),
      );
      return i.init().then((_) => i);
    },
    registerFor: {
      _test,
      _prod,
    },
    preResolve: true,
  );
  gh.lazySingleton<_i18.Mapper<_i19.WeatherInfoResponse, _i20.Temperature>>(
      () => _i21.WeatherInfoResponseToTemperatureMapper());
  gh.lazySingleton<_i18.Mapper<_i22.WeatherResponse, _i23.Weather>>(
      () => _i24.WeatherResponseToWeatherMapper());
  gh.lazySingleton<_i18.Mapper<_i25.WindResponse, _i26.Wind>>(
      () => _i27.WindResponseToWindMapper());
  gh.lazySingleton<_i18.Mapper<_i28.User, _i29.Account>>(
      () => _i30.UserToAccountMapper());
  gh.lazySingleton<_i18.Mapper<_i31.ForecastResponse, _i32.Forecast>>(
      () => _i33.ForecastResponseToForecastMapper(
            gh<_i18.Mapper<_i25.WindResponse, _i26.Wind>>(),
            gh<_i18.Mapper<_i22.WeatherResponse, _i23.Weather>>(),
            gh<_i18.Mapper<_i19.WeatherInfoResponse, _i20.Temperature>>(),
          ));
  gh.lazySingleton<_i34.OpenWeatherDataSource>(
      () => _i34.OpenWeatherDataSource(gh<_i9.Dio>()));
  gh.lazySingleton<_i35.SplashStringProvider>(
      () => _i36.ProdSplashStringProvider());
  gh.lazySingleton<_i37.TemperatureStringProvider>(
      () => _i38.ProdTemperatureStringProvider());
  gh.lazySingleton<_i4.WeatherIconProvider>(
      () => _i39.ProdWeatherIconProvider());
  gh.lazySingleton<_i4.WindDirectionStringProvider>(
      () => _i40.ProdWindDirectionStringProvider());
  gh.lazySingleton<_i41.WindStringProvider>(
      () => _i42.ProdWindStringProvider());
  gh.lazySingleton<_i43.AuthCoordinator>(() =>
      _i44.ProdAuthCoordinator(gh<_i13.GlobalKey<_i13.NavigatorState>>()));
  gh.lazySingleton<_i45.AuthRepository>(
    () => _i46.ProdAuthRepository(
      gh<_i47.FirebaseDataSource>(),
      gh<_i18.Mapper<_i28.User, _i29.Account>>(),
    ),
    registerFor: {
      _test,
      _prod,
    },
  );
  await gh.singletonAsync<_i48.AuthService>(
    () {
      final i = _i48.AuthService(gh<_i45.AuthRepository>());
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  await gh.lazySingletonAsync<_i49.ForecastRepository>(
    () {
      final i = _i50.ProdForecastRepository(
        gh<_i34.OpenWeatherDataSource>(),
        gh<_i18.Mapper<_i51.ForecastResponse, _i52.Forecast>>(),
      );
      return i.init().then((_) => i);
    },
    registerFor: {_prod},
    preResolve: true,
  );
  gh.singleton<_i53.ForecastService>(_i53.ForecastService(
    gh<_i16.LocationRepository>(),
    gh<_i49.ForecastRepository>(),
  ));
  gh.lazySingleton<_i18.Mapper<_i26.Wind, _i54.WindVM>>(
      () => _i55.WindToWindVMMapper(
            gh<_i56.WindDirectionStringProvider>(),
            gh<_i41.WindStringProvider>(),
          ));
  gh.lazySingleton<_i18.Mapper<_i23.Weather, _i57.WeatherVM>>(
      () => _i58.WeatherToWeatherVMMapper(gh<_i59.WeatherIconProvider>()));
  gh.lazySingleton<_i18.Mapper<_i20.Temperature, _i60.TemperatureVM>>(() =>
      _i61.TemperatureToTemperatureVMMapper(
          gh<_i37.TemperatureStringProvider>()));
  gh.lazySingleton<_i18.Mapper<_i52.Forecast, _i62.ForecastVM>>(
      () => _i63.ForecastToForecastVMMapper(
            gh<_i18.Mapper<_i52.Temperature, _i62.TemperatureVM>>(),
            gh<_i18.Mapper<_i52.Wind, _i62.WindVM>>(),
            gh<_i18.Mapper<_i52.Weather, _i62.WeatherVM>>(),
            gh<_i64.HumidityStringProvider>(),
            gh<_i65.DateTimeStringProvider>(),
          ));
  gh.factory<_i66.SplashBloc>(() => _i66.SplashBloc(
        gh<_i35.SplashStringProvider>(),
        gh<_i6.DateTimeProvider>(),
      ));
  gh.singleton<_i67.AuthBloc>(_i67.AuthBloc(
    gh<_i48.AuthService>(),
    gh<_i43.AuthCoordinator>(),
    gh<_i68.AuthExceptionStringProvider>(),
  ));
  gh.factory<_i69.ForecastBloc>(() => _i69.ForecastBloc(
        gh<_i53.ForecastService>(),
        gh<_i70.ForecastExceptionStringProvider>(),
        gh<_i18.Mapper<_i32.Forecast, _i62.ForecastVM>>(),
      ));
  return getIt;
}

class _$DioModule extends _i71.DioModule {}

class _$NavigatorKeyModule extends _i72.NavigatorKeyModule {}
