import 'package:injectable/injectable.dart';

import '../../application/coordinators/auth_coordinator.dart';
import '../../presentation/screens/screens.dart';
import 'coordinator.dart';

@LazySingleton(as: AuthCoordinator)
class ProdAuthCoordinator extends Coordinator implements AuthCoordinator {
  ProdAuthCoordinator(super.navigatorKey);

  @override
  void onLoggedIn() {
    popAll();
    push(const ForecastScreen());
  }

  @override
  void onLoggedOut() {
    popAll();
    push(const AuthScreen());
  }
}
