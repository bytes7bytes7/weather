import 'package:injectable/injectable.dart';

import '../../application/providers/wind_string_provider.dart';

@LazySingleton(as: WindStringProvider)
class ProdWindStringProvider implements WindStringProvider {
  const ProdWindStringProvider();

  @override
  String getSpeed(double speed) {
    late final String res;
    final fixed = speed.toStringAsFixed(1);
    if (fixed.endsWith('.0')) {
      res = speed.toStringAsFixed(0);
    } else {
      res = fixed;
    }

    return '$res м/с';
  }
}
