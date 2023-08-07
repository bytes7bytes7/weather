import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'infrastructure/injector/injector.dart';
import 'presentation/app.dart';
import 'utils/bloc_logger.dart';

const _locale = Locale('ru', 'RU');

Future<void> run(String env) async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await configInjector(env: env);
  await initializeDateFormatting(_locale.toString());

  Bloc.observer = BlocLogger();

  runApp(const App());
}
