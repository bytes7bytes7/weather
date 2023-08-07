import 'package:injectable/injectable.dart';

import '../../application/providers/splash_string_provider.dart';

@LazySingleton(as: SplashStringProvider)
class ProdSplashStringProvider implements SplashStringProvider {
  const ProdSplashStringProvider();

  @override
  String getGreeting(DateTime dateTime) {
    if (dateTime.hour >= 6 && dateTime.hour < 11) {
      return 'Доброе утро';
    }

    if (dateTime.hour >= 11 && dateTime.hour < 17) {
      return 'Добрый день';
    }

    if (dateTime.hour >= 17 && dateTime.hour < 21) {
      return 'Добрый вечер';
    }

    return 'Спокойной ночи';
  }
}
