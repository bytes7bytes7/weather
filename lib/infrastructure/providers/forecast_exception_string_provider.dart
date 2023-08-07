import 'package:injectable/injectable.dart';

import '../../application/application.dart';

@LazySingleton(as: ForecastExceptionStringProvider)
class ProdForecastExceptionStringProvider
    implements ForecastExceptionStringProvider {
  const ProdForecastExceptionStringProvider();

  @override
  String get locationServiceDisabled => 'Включите геолокацию';

  @override
  String get noLocationPermission => 'Предоставьте доступ к геолокации';

  @override
  String get canNotGetCache => 'Не удалось загрузить кэш';

  @override
  String get canNotLoad => 'Не удалось получить актуальные данные.'
      ' Проверьте подключение к интернету';
}
