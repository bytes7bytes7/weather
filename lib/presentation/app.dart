import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../application/blocs/auth/auth_bloc.dart';
import '../themes/themes.dart';
import 'screens/auth_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => GetIt.I.get<AuthBloc>(),
      child: MaterialApp(
        title: 'Weather Test Task',
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        home: const AuthScreen(),
      ),
    );
  }
}
