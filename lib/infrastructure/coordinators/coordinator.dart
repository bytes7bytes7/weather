import 'package:flutter/material.dart';

import '../../utils/typedef.dart';

abstract class Coordinator {
  const Coordinator(this._navigatorKey);

  final NavigatorKey _navigatorKey;

  BuildContext get context => _navigatorKey.currentState!.context;

  NavigatorState get navigator => _navigatorKey.currentState!;

  void push(Widget screen) {
    navigator.push(
      MaterialPageRoute(
        builder: (context) {
          return screen;
        },
      ),
    );
  }

  void popAll() {
    navigator.popUntil((route) => false);
  }
}
