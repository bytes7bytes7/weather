// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i19;
import 'package:flutter/material.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/application.dart' as _i3;
import '../../application/blocs/auth/auth_bloc.dart' as _i48;
import '../../application/blocs/forecast/forecast_bloc.dart' as _i54;
import '../../application/coordinators/auth_coordinator.dart' as _i39;
import '../../application/mappers/forecast_to_forecast_vm_mapper.dart' as _i35;
import '../../application/mappers/temperature_to_temperature_vm_mapper.dart'
    as _i30;
import '../../application/mappers/weather_to_weather_vm_mapper.dart' as _i27;
import '../../application/mappers/wind_to_wind_vm_mapper.dart' as _i23;
import '../../application/providers/auth_exception_string_provider.dart'
    as _i49;
import '../../application/providers/date_time_string_provider.dart' as _i37;
import '../../application/providers/forecast_exception_string_provider.dart'
    as _i55;
import '../../application/providers/humidity_string_provider.dart' as _i36;
import '../../application/providers/weather_icon_provider.dart' as _i28;
import '../../application/providers/wind_direction_string_provider.dart'
    as _i24;
import '../../application/view_models/temperature_vm/temperature_vm.dart'
    as _i29;
import '../../application/view_models/view_models.dart' as _i34;
import '../../application/view_models/weather_vm/weather_vm.dart' as _i26;
import '../../application/view_models/wind_vm/wind_vm.dart' as _i22;
import '../../domain/entities/account.dart' as _i20;
import '../../domain/repositories/auth_repository.dart' as _i41;
import '../../domain/repositories/forecast_repository.dart' as _i50;
import '../../domain/repositories/location_repository.dart' as _i10;
import '../../domain/services/auth_service.dart' as _i44;
import '../../domain/services/forecast_service.dart' as _i53;
import '../../domain/value_objects/forecast.dart' as _i46;
import '../../domain/value_objects/temperature.dart' as _i17;
import '../../domain/value_objects/value_objects.dart' as _i33;
import '../../domain/value_objects/weather.dart' as _i25;
import '../../domain/value_objects/wind.dart' as _i14;
import '../../utils/mapper.dart' as _i12;
import '../coordinators/auth_coordinator.dart' as _i40;
import '../data_sources/data_sources.dart' as _i43;
import '../data_sources/firebase_data_source.dart' as _i6;
import '../data_sources/location_data_source.dart' as _i9;
import '../data_sources/open_weather/open_weather_data_source.dart' as _i38;
import '../dto/dto.dart' as _i52;
import '../dto/forecast_response/forecast_response.dart' as _i45;
import '../dto/weather_info_response/weather_info_response.dart' as _i16;
import '../dto/weather_response/weather_response.dart' as _i31;
import '../dto/wind_response/wind_response.dart' as _i13;
import '../mappers/forecast_response_to_forecast_mapper.dart' as _i47;
import '../mappers/user_to_account_mapper.dart' as _i21;
import '../mappers/weather_info_response_to_temperature_mapper.dart' as _i18;
import '../mappers/weather_response_to_weather_mapper.dart' as _i32;
import '../mappers/wind_response_to_wind_mapper.dart' as _i15;
import '../modules/dio_module.dart' as _i56;
import '../modules/navigator_key_module.dart' as _i57;
import '../providers/auth_exception_string_provider.dart' as _i4;
import '../providers/forecast_exception_string_provider.dart' as _i7;
import '../repositories/auth_repository.dart' as _i42;
import '../repositories/forecast_repository.dart' as _i51;
import '../repositories/location_repository.dart' as _i11;

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
  gh.lazySingleton<_i3.ForecastExceptionStringProvider>(
      () => _i7.ProdForecastExceptionStringProvider());
  gh.singleton<_i8.GlobalKey<_i8.NavigatorState>>(
      navigatorKeyModule.navigatorKey);
  gh.lazySingleton<_i9.LocationDataSource>(() => _i9.LocationDataSource());
  gh.lazySingleton<_i10.LocationRepository>(
    () => _i11.ProdLocationRepository(gh<_i9.LocationDataSource>()),
    registerFor: {
      _test,
      _prod,
    },
  );
  gh.lazySingleton<_i12.Mapper<_i13.WindResponse, _i14.Wind>>(
      () => _i15.WindResponseToWindMapper());
  gh.lazySingleton<_i12.Mapper<_i16.WeatherInfoResponse, _i17.Temperature>>(
      () => _i18.WeatherInfoResponseToTemperatureMapper());
  gh.lazySingleton<_i12.Mapper<_i19.User, _i20.Account>>(
      () => _i21.UserToAccountMapper());
  gh.lazySingleton<_i12.Mapper<_i14.Wind, _i22.WindVM>>(
      () => _i23.WindToWindVMMapper(gh<_i24.WindDirectionStringProvider>()));
  gh.lazySingleton<_i12.Mapper<_i25.Weather, _i26.WeatherVM>>(
      () => _i27.WeatherToWeatherVMMapper(gh<_i28.WeatherIconProvider>()));
  gh.lazySingleton<_i12.Mapper<_i17.Temperature, _i29.TemperatureVM>>(
      () => _i30.TemperatureToTemperatureVMMapper());
  gh.lazySingleton<_i12.Mapper<_i31.WeatherResponse, _i25.Weather>>(
      () => _i32.WeatherResponseToWeatherMapper());
  gh.lazySingleton<_i12.Mapper<_i33.Forecast, _i34.ForecastVM>>(
      () => _i35.ForecastToForecastVMMapper(
            gh<_i12.Mapper<_i33.Temperature, _i34.TemperatureVM>>(),
            gh<_i12.Mapper<_i33.Wind, _i34.WindVM>>(),
            gh<_i12.Mapper<_i33.Weather, _i34.WeatherVM>>(),
            gh<_i36.HumidityStringProvider>(),
            gh<_i37.DateTimeStringProvider>(),
          ));
  gh.lazySingleton<_i38.OpenWeatherDataSource>(
      () => _i38.OpenWeatherDataSource(gh<_i5.Dio>()));
  gh.lazySingleton<_i39.AuthCoordinator>(
      () => _i40.ProdAuthCoordinator(gh<_i8.GlobalKey<_i8.NavigatorState>>()));
  gh.lazySingleton<_i41.AuthRepository>(
    () => _i42.ProdAuthRepository(
      gh<_i43.FirebaseDataSource>(),
      gh<_i12.Mapper<_i19.User, _i20.Account>>(),
    ),
    registerFor: {
      _test,
      _prod,
    },
  );
  await gh.singletonAsync<_i44.AuthService>(
    () {
      final i = _i44.AuthService(gh<_i41.AuthRepository>());
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.lazySingleton<_i12.Mapper<_i45.ForecastResponse, _i46.Forecast>>(
      () => _i47.ForecastResponseToForecastMapper(
            gh<_i12.Mapper<_i13.WindResponse, _i14.Wind>>(),
            gh<_i12.Mapper<_i31.WeatherResponse, _i25.Weather>>(),
            gh<_i12.Mapper<_i16.WeatherInfoResponse, _i17.Temperature>>(),
          ));
  gh.singleton<_i48.AuthBloc>(_i48.AuthBloc(
    gh<_i44.AuthService>(),
    gh<_i39.AuthCoordinator>(),
    gh<_i49.AuthExceptionStringProvider>(),
  ));
  gh.lazySingleton<_i50.ForecastRepository>(
    () => _i51.ProdForecastRepository(
      gh<_i38.OpenWeatherDataSource>(),
      gh<_i12.Mapper<_i52.ForecastResponse, _i33.Forecast>>(),
    ),
    registerFor: {_prod},
  );
  gh.singleton<_i53.ForecastService>(_i53.ForecastService(
    gh<_i10.LocationRepository>(),
    gh<_i50.ForecastRepository>(),
  ));
  gh.factory<_i54.ForecastBloc>(() => _i54.ForecastBloc(
        gh<_i53.ForecastService>(),
        gh<_i55.ForecastExceptionStringProvider>(),
        gh<_i12.Mapper<_i46.Forecast, _i34.ForecastVM>>(),
      ));
  return getIt;
}

class _$DioModule extends _i56.DioModule {}

class _$NavigatorKeyModule extends _i57.NavigatorKeyModule {}
