// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i24;
import 'package:flutter/material.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/application.dart' as _i3;
import '../../application/blocs/auth/auth_bloc.dart' as _i56;
import '../../application/blocs/forecast/forecast_bloc.dart' as _i62;
import '../../application/coordinators/auth_coordinator.dart' as _i37;
import '../../application/mappers/forecast_to_forecast_vm_mapper.dart' as _i59;
import '../../application/mappers/temperature_to_temperature_vm_mapper.dart'
    as _i55;
import '../../application/mappers/weather_to_weather_vm_mapper.dart' as _i52;
import '../../application/mappers/wind_to_wind_vm_mapper.dart' as _i49;
import '../../application/providers/auth_exception_string_provider.dart'
    as _i57;
import '../../application/providers/date_time_string_provider.dart' as _i61;
import '../../application/providers/forecast_exception_string_provider.dart'
    as _i63;
import '../../application/providers/humidity_string_provider.dart' as _i60;
import '../../application/providers/temperature_string_provider.dart' as _i31;
import '../../application/providers/weather_icon_provider.dart' as _i53;
import '../../application/providers/wind_direction_string_provider.dart'
    as _i50;
import '../../application/providers/wind_string_provider.dart' as _i35;
import '../../application/view_models/temperature_vm/temperature_vm.dart'
    as _i54;
import '../../application/view_models/view_models.dart' as _i58;
import '../../application/view_models/weather_vm/weather_vm.dart' as _i51;
import '../../application/view_models/wind_vm/wind_vm.dart' as _i48;
import '../../domain/entities/account.dart' as _i25;
import '../../domain/repositories/auth_repository.dart' as _i39;
import '../../domain/repositories/forecast_repository.dart' as _i43;
import '../../domain/repositories/location_repository.dart' as _i12;
import '../../domain/services/auth_service.dart' as _i42;
import '../../domain/services/forecast_service.dart' as _i47;
import '../../domain/value_objects/forecast.dart' as _i28;
import '../../domain/value_objects/temperature.dart' as _i22;
import '../../domain/value_objects/value_objects.dart' as _i46;
import '../../domain/value_objects/weather.dart' as _i19;
import '../../domain/value_objects/wind.dart' as _i16;
import '../../utils/mapper.dart' as _i14;
import '../coordinators/auth_coordinator.dart' as _i38;
import '../data_sources/data_sources.dart' as _i41;
import '../data_sources/firebase_data_source.dart' as _i7;
import '../data_sources/location_data_source.dart' as _i11;
import '../data_sources/open_weather/open_weather_data_source.dart' as _i30;
import '../dto/dto.dart' as _i45;
import '../dto/forecast_response/forecast_response.dart' as _i27;
import '../dto/weather_info_response/weather_info_response.dart' as _i21;
import '../dto/weather_response/weather_response.dart' as _i18;
import '../dto/wind_response/wind_response.dart' as _i15;
import '../mappers/forecast_response_to_forecast_mapper.dart' as _i29;
import '../mappers/user_to_account_mapper.dart' as _i26;
import '../mappers/weather_info_response_to_temperature_mapper.dart' as _i23;
import '../mappers/weather_response_to_weather_mapper.dart' as _i20;
import '../mappers/wind_response_to_wind_mapper.dart' as _i17;
import '../modules/dio_module.dart' as _i64;
import '../modules/navigator_key_module.dart' as _i65;
import '../providers/auth_exception_string_provider.dart' as _i4;
import '../providers/date_time_string_provider.dart' as _i5;
import '../providers/forecast_exception_string_provider.dart' as _i8;
import '../providers/humidity_string_provider.dart' as _i10;
import '../providers/temperature_string_provider.dart' as _i32;
import '../providers/weather_icon_provider.dart' as _i33;
import '../providers/wind_direction_string_provider.dart' as _i34;
import '../providers/wind_string_provider.dart' as _i36;
import '../repositories/auth_repository.dart' as _i40;
import '../repositories/forecast_repository.dart' as _i44;
import '../repositories/location_repository.dart' as _i13;

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
  gh.lazySingleton<_i3.DateTimeStringProvider>(
      () => _i5.ProdDateTimeStringProvider());
  gh.lazySingleton<_i6.Dio>(() => dioModule.dio);
  await gh.lazySingletonAsync<_i7.FirebaseDataSource>(
    () {
      final i = _i7.FirebaseDataSource();
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.lazySingleton<_i3.ForecastExceptionStringProvider>(
      () => _i8.ProdForecastExceptionStringProvider());
  gh.singleton<_i9.GlobalKey<_i9.NavigatorState>>(
      navigatorKeyModule.navigatorKey);
  gh.lazySingleton<_i3.HumidityStringProvider>(
      () => _i10.ProdHumidityStringProvider());
  gh.lazySingleton<_i11.LocationDataSource>(() => _i11.LocationDataSource());
  gh.lazySingleton<_i12.LocationRepository>(
    () => _i13.ProdLocationRepository(gh<_i11.LocationDataSource>()),
    registerFor: {
      _test,
      _prod,
    },
  );
  gh.lazySingleton<_i14.Mapper<_i15.WindResponse, _i16.Wind>>(
      () => _i17.WindResponseToWindMapper());
  gh.lazySingleton<_i14.Mapper<_i18.WeatherResponse, _i19.Weather>>(
      () => _i20.WeatherResponseToWeatherMapper());
  gh.lazySingleton<_i14.Mapper<_i21.WeatherInfoResponse, _i22.Temperature>>(
      () => _i23.WeatherInfoResponseToTemperatureMapper());
  gh.lazySingleton<_i14.Mapper<_i24.User, _i25.Account>>(
      () => _i26.UserToAccountMapper());
  gh.lazySingleton<_i14.Mapper<_i27.ForecastResponse, _i28.Forecast>>(
      () => _i29.ForecastResponseToForecastMapper(
            gh<_i14.Mapper<_i15.WindResponse, _i16.Wind>>(),
            gh<_i14.Mapper<_i18.WeatherResponse, _i19.Weather>>(),
            gh<_i14.Mapper<_i21.WeatherInfoResponse, _i22.Temperature>>(),
          ));
  gh.lazySingleton<_i30.OpenWeatherDataSource>(
      () => _i30.OpenWeatherDataSource(gh<_i6.Dio>()));
  gh.lazySingleton<_i31.TemperatureStringProvider>(
      () => _i32.ProdTemperatureStringProvider());
  gh.lazySingleton<_i3.WeatherIconProvider>(
      () => _i33.ProdWeatherIconProvider());
  gh.lazySingleton<_i3.WindDirectionStringProvider>(
      () => _i34.ProdWindDirectionStringProvider());
  gh.lazySingleton<_i35.WindStringProvider>(
      () => _i36.ProdWindStringProvider());
  gh.lazySingleton<_i37.AuthCoordinator>(
      () => _i38.ProdAuthCoordinator(gh<_i9.GlobalKey<_i9.NavigatorState>>()));
  gh.lazySingleton<_i39.AuthRepository>(
    () => _i40.ProdAuthRepository(
      gh<_i41.FirebaseDataSource>(),
      gh<_i14.Mapper<_i24.User, _i25.Account>>(),
    ),
    registerFor: {
      _test,
      _prod,
    },
  );
  await gh.singletonAsync<_i42.AuthService>(
    () {
      final i = _i42.AuthService(gh<_i39.AuthRepository>());
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.lazySingleton<_i43.ForecastRepository>(
    () => _i44.ProdForecastRepository(
      gh<_i30.OpenWeatherDataSource>(),
      gh<_i14.Mapper<_i45.ForecastResponse, _i46.Forecast>>(),
    ),
    registerFor: {_prod},
  );
  gh.singleton<_i47.ForecastService>(_i47.ForecastService(
    gh<_i12.LocationRepository>(),
    gh<_i43.ForecastRepository>(),
  ));
  gh.lazySingleton<_i14.Mapper<_i16.Wind, _i48.WindVM>>(
      () => _i49.WindToWindVMMapper(
            gh<_i50.WindDirectionStringProvider>(),
            gh<_i35.WindStringProvider>(),
          ));
  gh.lazySingleton<_i14.Mapper<_i19.Weather, _i51.WeatherVM>>(
      () => _i52.WeatherToWeatherVMMapper(gh<_i53.WeatherIconProvider>()));
  gh.lazySingleton<_i14.Mapper<_i22.Temperature, _i54.TemperatureVM>>(() =>
      _i55.TemperatureToTemperatureVMMapper(
          gh<_i31.TemperatureStringProvider>()));
  gh.singleton<_i56.AuthBloc>(_i56.AuthBloc(
    gh<_i42.AuthService>(),
    gh<_i37.AuthCoordinator>(),
    gh<_i57.AuthExceptionStringProvider>(),
  ));
  gh.lazySingleton<_i14.Mapper<_i46.Forecast, _i58.ForecastVM>>(
      () => _i59.ForecastToForecastVMMapper(
            gh<_i14.Mapper<_i46.Temperature, _i58.TemperatureVM>>(),
            gh<_i14.Mapper<_i46.Wind, _i58.WindVM>>(),
            gh<_i14.Mapper<_i46.Weather, _i58.WeatherVM>>(),
            gh<_i60.HumidityStringProvider>(),
            gh<_i61.DateTimeStringProvider>(),
          ));
  gh.factory<_i62.ForecastBloc>(() => _i62.ForecastBloc(
        gh<_i47.ForecastService>(),
        gh<_i63.ForecastExceptionStringProvider>(),
        gh<_i14.Mapper<_i28.Forecast, _i58.ForecastVM>>(),
      ));
  return getIt;
}

class _$DioModule extends _i64.DioModule {}

class _$NavigatorKeyModule extends _i65.NavigatorKeyModule {}
