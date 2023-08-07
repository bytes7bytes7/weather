import 'package:injectable/injectable.dart';

import '../../utils/typedef.dart';

@module
abstract class NavigatorKeyModule {
  @singleton
  NavigatorKey get navigatorKey => NavigatorKey();
}
