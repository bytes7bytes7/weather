import 'package:flutter/material.dart';

import 'infrastructure/injector/injector.dart';
import 'presentation/app.dart';

Future<void> run(String env) async {
  await configInjector(env: env);

  runApp(const App());
}
