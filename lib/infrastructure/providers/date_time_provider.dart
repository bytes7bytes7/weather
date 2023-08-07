import 'package:injectable/injectable.dart';

import '../../application/providers/date_time_provider.dart';

@LazySingleton(as: DateTimeProvider)
class ProdDateTimeProvider implements DateTimeProvider {
  const ProdDateTimeProvider();

  @override
  DateTime now() {
    return DateTime.now();
  }
}
