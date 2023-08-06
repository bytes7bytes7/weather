// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/entities/account.dart' as _i10;
import '../../domain/repositories/auth_repository.dart' as _i12;
import '../../domain/repositories/forecast_repository.dart' as _i4;
import '../../domain/repositories/location_repository.dart' as _i6;
import '../../utils/mapper.dart' as _i8;
import '../data_sources/data_sources.dart' as _i14;
import '../data_sources/firebase_data_source.dart' as _i3;
import '../mappers/user_to_account_mapper.dart' as _i11;
import '../repositories/auth_repository.dart' as _i13;
import '../repositories/forecast_repository.dart' as _i5;
import '../repositories/location_repository.dart' as _i7;

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
  gh.lazySingleton<_i6.LocationRepository>(
    () => _i7.TestLocationRepository(),
    registerFor: {
      _test,
      _prod,
    },
  );
  gh.lazySingleton<_i8.Mapper<_i9.User, _i10.Account>>(
      () => _i11.UserToAccountMapper());
  gh.lazySingleton<_i12.AuthRepository>(
    () => _i13.ProdAuthRepository(
      gh<_i14.FirebaseDataSource>(),
      gh<_i8.Mapper<_i9.User, _i10.Account>>(),
    ),
    registerFor: {
      _test,
      _prod,
    },
  );
  return getIt;
}
