import 'package:flutter/material.dart';

import '../themes/themes.dart';
import 'screens/auth_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Test Task',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: const AuthScreen(),
    );
  }
}
