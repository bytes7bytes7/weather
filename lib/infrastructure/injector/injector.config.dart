// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i23;
import 'package:flutter/material.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/application.dart' as _i3;
import '../../application/blocs/auth/auth_bloc.dart' as _i38;
import '../../application/blocs/forecast/forecast_bloc.dart' as _i40;
import '../../application/coordinators/auth_coordinator.dart' as _i26;
import '../../application/mappers/forecast_to_forecast_vm_mapper.dart' as _i35;
import '../../application/mappers/temperature_to_temperature_vm_mapper.dart'
    as _i14;
import '../../application/mappers/weather_to_weather_vm_mapper.dart' as _i17;
import '../../application/mappers/wind_to_wind_vm_mapper.dart' as _i21;
import '../../application/providers/auth_exception_string_provider.dart'
    as _i39;
import '../../application/providers/date_time_string_provider.dart' as _i37;
import '../../application/providers/humidity_string_provider.dart' as _i36;
import '../../application/providers/weather_icon_provider.dart' as _i18;
import '../../application/providers/wind_direction_string_provider.dart'
    as _i22;
import '../../application/view_models/temperature_vm/temperature_vm.dart'
    as _i13;
import '../../application/view_models/view_models.dart' as _i34;
import '../../application/view_models/weather_vm/weather_vm.dart' as _i16;
import '../../application/view_models/wind_vm/wind_vm.dart' as _i20;
import '../../domain/entities/account.dart' as _i24;
import '../../domain/repositories/auth_repository.dart' as _i28;
import '../../domain/repositories/forecast_repository.dart' as _i6;
import '../../domain/repositories/location_repository.dart' as _i9;
import '../../domain/services/auth_service.dart' as _i31;
import '../../domain/services/forecast_service.dart' as _i32;
import '../../domain/value_objects/forecast.dart' as _i41;
import '../../domain/value_objects/temperature.dart' as _i12;
import '../../domain/value_objects/value_objects.dart' as _i33;
import '../../domain/value_objects/weather.dart' as _i15;
import '../../domain/value_objects/wind.dart' as _i19;
import '../../utils/mapper.dart' as _i11;
import '../coordinators/auth_coordinator.dart' as _i27;
import '../data_sources/data_sources.dart' as _i30;
import '../data_sources/firebase_data_source.dart' as _i5;
import '../mappers/user_to_account_mapper.dart' as _i25;
import '../modules/navigator_key_module.dart' as _i42;
import '../providers/auth_exception_string_provider.dart' as _i4;
import '../repositories/auth_repository.dart' as _i29;
import '../repositories/forecast_repository.dart' as _i7;
import '../repositories/location_repository.dart' as _i10;

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
  gh.lazySingleton<_i3.AuthExceptionStringProvider>(
      () => _i4.ProdAuthExceptionStringProvider());
  await gh.singletonAsync<_i5.FirebaseDataSource>(
    () {
      final i = _i5.FirebaseDataSource();
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.lazySingleton<_i6.ForecastRepository>(
    () => _i7.TestForecastRepository(),
    registerFor: {
      _test,
      _prod,
    },
  );
  gh.singleton<_i8.GlobalKey<_i8.NavigatorState>>(
      navigatorKeyModule.navigatorKey);
  gh.lazySingleton<_i9.LocationRepository>(
    () => _i10.TestLocationRepository(),
    registerFor: {
      _test,
      _prod,
    },
  );
  gh.lazySingleton<_i11.Mapper<_i12.Temperature, _i13.TemperatureVM>>(
      () => _i14.TemperatureToTemperatureVMMapper());
  gh.lazySingleton<_i11.Mapper<_i15.Weather, _i16.WeatherVM>>(
      () => _i17.WeatherToWeatherVMMapper(gh<_i18.WeatherIconProvider>()));
  gh.lazySingleton<_i11.Mapper<_i19.Wind, _i20.WindVM>>(
      () => _i21.WindToWindVMMapper(gh<_i22.WindDirectionStringProvider>()));
  gh.lazySingleton<_i11.Mapper<_i23.User, _i24.Account>>(
      () => _i25.UserToAccountMapper());
  gh.lazySingleton<_i26.AuthCoordinator>(
      () => _i27.ProdAuthCoordinator(gh<_i8.GlobalKey<_i8.NavigatorState>>()));
  gh.lazySingleton<_i28.AuthRepository>(
    () => _i29.ProdAuthRepository(
      gh<_i30.FirebaseDataSource>(),
      gh<_i11.Mapper<_i23.User, _i24.Account>>(),
    ),
    registerFor: {
      _test,
      _prod,
    },
  );
  await gh.singletonAsync<_i31.AuthService>(
    () {
      final i = _i31.AuthService(gh<_i28.AuthRepository>());
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i32.ForecastService>(_i32.ForecastService(
    gh<_i9.LocationRepository>(),
    gh<_i6.ForecastRepository>(),
  ));
  gh.lazySingleton<_i11.Mapper<_i33.Forecast, _i34.ForecastVM>>(
      () => _i35.ForecastToForecastVMMapper(
            gh<_i11.Mapper<_i33.Temperature, _i34.TemperatureVM>>(),
            gh<_i11.Mapper<_i33.Wind, _i34.WindVM>>(),
            gh<_i11.Mapper<_i33.Weather, _i34.WeatherVM>>(),
            gh<_i36.HumidityStringProvider>(),
            gh<_i37.DateTimeStringProvider>(),
          ));
  gh.singleton<_i38.AuthBloc>(_i38.AuthBloc(
    gh<_i31.AuthService>(),
    gh<_i26.AuthCoordinator>(),
    gh<_i39.AuthExceptionStringProvider>(),
  ));
  gh.factory<_i40.ForecastBloc>(() => _i40.ForecastBloc(
        gh<_i32.ForecastService>(),
        gh<_i11.Mapper<_i41.Forecast, _i34.ForecastVM>>(),
      ));
  return getIt;
}

class _$NavigatorKeyModule extends _i42.NavigatorKeyModule {}
