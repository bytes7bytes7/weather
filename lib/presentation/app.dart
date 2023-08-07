import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../application/blocs/auth/auth_bloc.dart';
import '../themes/themes.dart';
import '../utils/typedef.dart';
import 'screens/splash_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetIt.instance.get<AuthBloc>()..add(const AuthEvent.init()),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Weather Test Task',
            theme: lightTheme,
            debugShowCheckedModeBanner: false,
            navigatorKey: GetIt.instance.get<NavigatorKey>(),
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
