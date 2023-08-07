import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'infrastructure/injector/injector.dart';
import 'presentation/app.dart';
import 'utils/bloc_logger.dart';

Future<void> run(String env) async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await configInjector(env: env);

  Bloc.observer = BlocLogger();

  runApp(const App());
}
