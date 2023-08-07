// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i22;
import 'package:flutter/material.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/application.dart' as _i3;
import '../../application/blocs/auth/auth_bloc.dart' as _i46;
import '../../application/blocs/forecast/forecast_bloc.dart' as _i52;
import '../../application/coordinators/auth_coordinator.dart' as _i32;
import '../../application/mappers/forecast_to_forecast_vm_mapper.dart' as _i40;
import '../../application/mappers/temperature_to_temperature_vm_mapper.dart'
    as _i13;
import '../../application/mappers/weather_to_weather_vm_mapper.dart' as _i16;
import '../../application/mappers/wind_to_wind_vm_mapper.dart' as _i20;
import '../../application/providers/auth_exception_string_provider.dart'
    as _i47;
import '../../application/providers/date_time_string_provider.dart' as _i42;
import '../../application/providers/humidity_string_provider.dart' as _i41;
import '../../application/providers/weather_icon_provider.dart' as _i17;
import '../../application/providers/wind_direction_string_provider.dart'
    as _i21;
import '../../application/view_models/temperature_vm/temperature_vm.dart'
    as _i12;
import '../../application/view_models/view_models.dart' as _i39;
import '../../application/view_models/weather_vm/weather_vm.dart' as _i15;
import '../../application/view_models/wind_vm/wind_vm.dart' as _i19;
import '../../domain/entities/account.dart' as _i23;
import '../../domain/repositories/auth_repository.dart' as _i34;
import '../../domain/repositories/forecast_repository.dart' as _i48;
import '../../domain/repositories/location_repository.dart' as _i8;
import '../../domain/services/auth_service.dart' as _i37;
import '../../domain/services/forecast_service.dart' as _i51;
import '../../domain/value_objects/forecast.dart' as _i44;
import '../../domain/value_objects/temperature.dart' as _i11;
import '../../domain/value_objects/value_objects.dart' as _i38;
import '../../domain/value_objects/weather.dart' as _i14;
import '../../domain/value_objects/wind.dart' as _i18;
import '../../utils/mapper.dart' as _i10;
import '../coordinators/auth_coordinator.dart' as _i33;
import '../data_sources/data_sources.dart' as _i36;
import '../data_sources/firebase_data_source.dart' as _i6;
import '../data_sources/open_weather_data_source.dart' as _i31;
import '../dto/dto.dart' as _i50;
import '../dto/forecast_response/forecast_response.dart' as _i43;
import '../dto/weather_info_response/weather_info_response.dart' as _i29;
import '../dto/weather_response/weather_response.dart' as _i27;
import '../dto/wind_response/wind_response.dart' as _i25;
import '../mappers/forecast_response_to_forecast_mapper.dart' as _i45;
import '../mappers/user_to_account_mapper.dart' as _i24;
import '../mappers/weather_info_response_to_temperature_mapper.dart' as _i30;
import '../mappers/weather_response_to_weather_mapper.dart' as _i28;
import '../mappers/wind_response_to_wind_mapper.dart' as _i26;
import '../modules/dio_module.dart' as _i53;
import '../modules/navigator_key_module.dart' as _i54;
import '../providers/auth_exception_string_provider.dart' as _i4;
import '../repositories/auth_repository.dart' as _i35;
import '../repositories/forecast_repository.dart' as _i49;
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
  gh.singleton<_i7.GlobalKey<_i7.NavigatorState>>(
      navigatorKeyModule.navigatorKey);
  gh.lazySingleton<_i8.LocationRepository>(
    () => _i9.TestLocationRepository(),
    registerFor: {
      _test,
      _prod,
    },
  );
  gh.lazySingleton<_i10.Mapper<_i11.Temperature, _i12.TemperatureVM>>(
      () => _i13.TemperatureToTemperatureVMMapper());
  gh.lazySingleton<_i10.Mapper<_i14.Weather, _i15.WeatherVM>>(
      () => _i16.WeatherToWeatherVMMapper(gh<_i17.WeatherIconProvider>()));
  gh.lazySingleton<_i10.Mapper<_i18.Wind, _i19.WindVM>>(
      () => _i20.WindToWindVMMapper(gh<_i21.WindDirectionStringProvider>()));
  gh.lazySingleton<_i10.Mapper<_i22.User, _i23.Account>>(
      () => _i24.UserToAccountMapper());
  gh.lazySingleton<_i10.Mapper<_i25.WindResponse, _i18.Wind>>(
      () => _i26.WindResponseToWindMapper());
  gh.lazySingleton<_i10.Mapper<_i27.WeatherResponse, _i14.Weather>>(
      () => _i28.WeatherResponseToWeatherMapper());
  gh.lazySingleton<_i10.Mapper<_i29.WeatherInfoResponse, _i11.Temperature>>(
      () => _i30.WeatherInfoResponseToTemperatureMapper());
  gh.lazySingleton<_i31.OpenWeatherDataSource>(
      () => _i31.OpenWeatherDataSource(gh<_i5.Dio>()));
  gh.lazySingleton<_i32.AuthCoordinator>(
      () => _i33.ProdAuthCoordinator(gh<_i7.GlobalKey<_i7.NavigatorState>>()));
  gh.lazySingleton<_i34.AuthRepository>(
    () => _i35.ProdAuthRepository(
      gh<_i36.FirebaseDataSource>(),
      gh<_i10.Mapper<_i22.User, _i23.Account>>(),
    ),
    registerFor: {
      _test,
      _prod,
    },
  );
  await gh.singletonAsync<_i37.AuthService>(
    () {
      final i = _i37.AuthService(gh<_i34.AuthRepository>());
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.lazySingleton<_i10.Mapper<_i38.Forecast, _i39.ForecastVM>>(
      () => _i40.ForecastToForecastVMMapper(
            gh<_i10.Mapper<_i38.Temperature, _i39.TemperatureVM>>(),
            gh<_i10.Mapper<_i38.Wind, _i39.WindVM>>(),
            gh<_i10.Mapper<_i38.Weather, _i39.WeatherVM>>(),
            gh<_i41.HumidityStringProvider>(),
            gh<_i42.DateTimeStringProvider>(),
          ));
  gh.lazySingleton<_i10.Mapper<_i43.ForecastResponse, _i44.Forecast>>(
      () => _i45.ForecastResponseToForecastMapper(
            gh<_i10.Mapper<_i25.WindResponse, _i18.Wind>>(),
            gh<_i10.Mapper<_i27.WeatherResponse, _i14.Weather>>(),
            gh<_i10.Mapper<_i29.WeatherInfoResponse, _i11.Temperature>>(),
          ));
  gh.singleton<_i46.AuthBloc>(_i46.AuthBloc(
    gh<_i37.AuthService>(),
    gh<_i32.AuthCoordinator>(),
    gh<_i47.AuthExceptionStringProvider>(),
  ));
  gh.lazySingleton<_i48.ForecastRepository>(
    () => _i49.ProdForecastRepository(
      gh<_i31.OpenWeatherDataSource>(),
      gh<_i10.Mapper<_i50.ForecastResponse, _i38.Forecast>>(),
    ),
    registerFor: {_prod},
  );
  gh.singleton<_i51.ForecastService>(_i51.ForecastService(
    gh<_i8.LocationRepository>(),
    gh<_i48.ForecastRepository>(),
  ));
  gh.factory<_i52.ForecastBloc>(() => _i52.ForecastBloc(
        gh<_i51.ForecastService>(),
        gh<_i10.Mapper<_i44.Forecast, _i39.ForecastVM>>(),
      ));
  return getIt;
}

class _$DioModule extends _i53.DioModule {}

class _$NavigatorKeyModule extends _i54.NavigatorKeyModule {}
