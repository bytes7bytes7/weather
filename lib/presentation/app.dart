import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Weather Test Task',
      home: SplashScreen(),
    );
  }
}
