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
import '../../application/blocs/forecast/forecast_bloc.dart' as _i58;
import '../../application/coordinators/auth_coordinator.dart' as _i35;
import '../../application/mappers/forecast_to_forecast_vm_mapper.dart' as _i53;
import '../../application/mappers/temperature_to_temperature_vm_mapper.dart'
    as _i31;
import '../../application/mappers/weather_to_weather_vm_mapper.dart' as _i50;
import '../../application/mappers/wind_to_wind_vm_mapper.dart' as _i47;
import '../../application/providers/auth_exception_string_provider.dart'
    as _i57;
import '../../application/providers/date_time_string_provider.dart' as _i55;
import '../../application/providers/forecast_exception_string_provider.dart'
    as _i59;
import '../../application/providers/humidity_string_provider.dart' as _i54;
import '../../application/providers/weather_icon_provider.dart' as _i51;
import '../../application/providers/wind_direction_string_provider.dart'
    as _i48;
import '../../application/view_models/temperature_vm/temperature_vm.dart'
    as _i30;
import '../../application/view_models/view_models.dart' as _i52;
import '../../application/view_models/weather_vm/weather_vm.dart' as _i49;
import '../../application/view_models/wind_vm/wind_vm.dart' as _i46;
import '../../domain/entities/account.dart' as _i25;
import '../../domain/repositories/auth_repository.dart' as _i37;
import '../../domain/repositories/forecast_repository.dart' as _i41;
import '../../domain/repositories/location_repository.dart' as _i12;
import '../../domain/services/auth_service.dart' as _i40;
import '../../domain/services/forecast_service.dart' as _i45;
import '../../domain/value_objects/forecast.dart' as _i28;
import '../../domain/value_objects/temperature.dart' as _i22;
import '../../domain/value_objects/value_objects.dart' as _i44;
import '../../domain/value_objects/weather.dart' as _i16;
import '../../domain/value_objects/wind.dart' as _i19;
import '../../utils/mapper.dart' as _i14;
import '../coordinators/auth_coordinator.dart' as _i36;
import '../data_sources/data_sources.dart' as _i39;
import '../data_sources/firebase_data_source.dart' as _i7;
import '../data_sources/location_data_source.dart' as _i11;
import '../data_sources/open_weather/open_weather_data_source.dart' as _i32;
import '../dto/dto.dart' as _i43;
import '../dto/forecast_response/forecast_response.dart' as _i27;
import '../dto/weather_info_response/weather_info_response.dart' as _i21;
import '../dto/weather_response/weather_response.dart' as _i15;
import '../dto/wind_response/wind_response.dart' as _i18;
import '../mappers/forecast_response_to_forecast_mapper.dart' as _i29;
import '../mappers/user_to_account_mapper.dart' as _i26;
import '../mappers/weather_info_response_to_temperature_mapper.dart' as _i23;
import '../mappers/weather_response_to_weather_mapper.dart' as _i17;
import '../mappers/wind_response_to_wind_mapper.dart' as _i20;
import '../modules/dio_module.dart' as _i60;
import '../modules/navigator_key_module.dart' as _i61;
import '../providers/auth_exception_string_provider.dart' as _i4;
import '../providers/date_time_string_provider.dart' as _i5;
import '../providers/forecast_exception_string_provider.dart' as _i8;
import '../providers/humidity_string_provider.dart' as _i10;
import '../providers/weather_icon_provider.dart' as _i33;
import '../providers/wind_direction_string_provider.dart' as _i34;
import '../repositories/auth_repository.dart' as _i38;
import '../repositories/forecast_repository.dart' as _i42;
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
  gh.lazySingleton<_i14.Mapper<_i15.WeatherResponse, _i16.Weather>>(
      () => _i17.WeatherResponseToWeatherMapper());
  gh.lazySingleton<_i14.Mapper<_i18.WindResponse, _i19.Wind>>(
      () => _i20.WindResponseToWindMapper());
  gh.lazySingleton<_i14.Mapper<_i21.WeatherInfoResponse, _i22.Temperature>>(
      () => _i23.WeatherInfoResponseToTemperatureMapper());
  gh.lazySingleton<_i14.Mapper<_i24.User, _i25.Account>>(
      () => _i26.UserToAccountMapper());
  gh.lazySingleton<_i14.Mapper<_i27.ForecastResponse, _i28.Forecast>>(
      () => _i29.ForecastResponseToForecastMapper(
            gh<_i14.Mapper<_i18.WindResponse, _i19.Wind>>(),
            gh<_i14.Mapper<_i15.WeatherResponse, _i16.Weather>>(),
            gh<_i14.Mapper<_i21.WeatherInfoResponse, _i22.Temperature>>(),
          ));
  gh.lazySingleton<_i14.Mapper<_i22.Temperature, _i30.TemperatureVM>>(
      () => _i31.TemperatureToTemperatureVMMapper());
  gh.lazySingleton<_i32.OpenWeatherDataSource>(
      () => _i32.OpenWeatherDataSource(gh<_i6.Dio>()));
  gh.lazySingleton<_i3.WeatherIconProvider>(
      () => _i33.ProdWeatherIconProvider());
  gh.lazySingleton<_i3.WindDirectionStringProvider>(
      () => _i34.ProdWindDirectionStringProvider());
  gh.lazySingleton<_i35.AuthCoordinator>(
      () => _i36.ProdAuthCoordinator(gh<_i9.GlobalKey<_i9.NavigatorState>>()));
  gh.lazySingleton<_i37.AuthRepository>(
    () => _i38.ProdAuthRepository(
      gh<_i39.FirebaseDataSource>(),
      gh<_i14.Mapper<_i24.User, _i25.Account>>(),
    ),
    registerFor: {
      _test,
      _prod,
    },
  );
  await gh.singletonAsync<_i40.AuthService>(
    () {
      final i = _i40.AuthService(gh<_i37.AuthRepository>());
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.lazySingleton<_i41.ForecastRepository>(
    () => _i42.ProdForecastRepository(
      gh<_i32.OpenWeatherDataSource>(),
      gh<_i14.Mapper<_i43.ForecastResponse, _i44.Forecast>>(),
    ),
    registerFor: {_prod},
  );
  gh.singleton<_i45.ForecastService>(_i45.ForecastService(
    gh<_i12.LocationRepository>(),
    gh<_i41.ForecastRepository>(),
  ));
  gh.lazySingleton<_i14.Mapper<_i19.Wind, _i46.WindVM>>(
      () => _i47.WindToWindVMMapper(gh<_i48.WindDirectionStringProvider>()));
  gh.lazySingleton<_i14.Mapper<_i16.Weather, _i49.WeatherVM>>(
      () => _i50.WeatherToWeatherVMMapper(gh<_i51.WeatherIconProvider>()));
  gh.lazySingleton<_i14.Mapper<_i44.Forecast, _i52.ForecastVM>>(
      () => _i53.ForecastToForecastVMMapper(
            gh<_i14.Mapper<_i44.Temperature, _i52.TemperatureVM>>(),
            gh<_i14.Mapper<_i44.Wind, _i52.WindVM>>(),
            gh<_i14.Mapper<_i44.Weather, _i52.WeatherVM>>(),
            gh<_i54.HumidityStringProvider>(),
            gh<_i55.DateTimeStringProvider>(),
          ));
  gh.singleton<_i56.AuthBloc>(_i56.AuthBloc(
    gh<_i40.AuthService>(),
    gh<_i35.AuthCoordinator>(),
    gh<_i57.AuthExceptionStringProvider>(),
  ));
  gh.factory<_i58.ForecastBloc>(() => _i58.ForecastBloc(
        gh<_i45.ForecastService>(),
        gh<_i59.ForecastExceptionStringProvider>(),
        gh<_i14.Mapper<_i28.Forecast, _i52.ForecastVM>>(),
      ));
  return getIt;
}

class _$DioModule extends _i60.DioModule {}

class _$NavigatorKeyModule extends _i61.NavigatorKeyModule {}
