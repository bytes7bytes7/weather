import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'infrastructure/injector/injector.dart';
import 'presentation/app.dart';

Future<void> run(String env) async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await configInjector(env: env);

  runApp(const App());
}
