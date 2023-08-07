import 'package:injectable/injectable.dart';

import '../../application/application.dart';

@LazySingleton(as: ForecastExceptionStringProvider)
class ProdForecastExceptionStringProvider
    implements ForecastExceptionStringProvider {
  const ProdForecastExceptionStringProvider();

  @override
  String get unknown => 'Неизвестная ошибка';

  @override
  String get locationServiceDisabled => 'Включите геолокацию';

  @override
  String get noLocationPermission => 'Предоставьте доступ к геолокации';
}
