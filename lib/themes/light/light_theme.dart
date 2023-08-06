import 'package:flutter/material.dart';

import '../../gen/fonts.gen.dart';
import '../extensions/color_scheme_tx.dart';

part 'colors.dart';

final lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: _Colors.white,
  iconTheme: const IconThemeData(
    color: _Colors.white,
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: _Colors.blue,
    onPrimary: _Colors.white,
    secondary: _Colors.heliotrope,
    onSecondary: _Colors.white,
    error: _Colors.persimmon,
    onError: _Colors.white,
    background: _Colors.white,
    onBackground: _Colors.black,
    surface: _Colors.white,
    onSurface: _Colors.black,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 64,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.ubuntu,
      color: _Colors.white,
    ),
    displayMedium: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.bold,
      fontFamily: FontFamily.inter,
      color: _Colors.white,
    ),
    displaySmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w300,
      fontFamily: FontFamily.inter,
      color: _Colors.white,
    ),
    headlineMedium: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      color: _Colors.white,
    ),
    titleLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.ubuntu,
      color: _Colors.shark,
    ),
    titleMedium: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: _Colors.black,
    ),
    titleSmall: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: _Colors.white,
    ),
    bodyLarge: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: _Colors.white,
    ),
    bodyMedium: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: _Colors.regentGray,
    ),
    labelMedium: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: _Colors.white,
    ),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: _Colors.persimmon,
    selectionColor: _Colors.persimmon.withOpacity(0.3),
    selectionHandleColor: _Colors.persimmon,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: _Colors.regentGray,
    ),
    floatingLabelStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: _Colors.regentGray,
    ),
    suffixIconColor: _Colors.blue,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: _Colors.blue,
        width: 2,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: _Colors.athensGray,
        width: 1,
      ),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: _Colors.persimmon,
        width: 1,
      ),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: _Colors.persimmon,
        width: 2,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsets.all(15),
      ),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      foregroundColor: MaterialStateProperty.all(_Colors.white),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return _Colors.blue.withOpacity(0.5);
        }

        return _Colors.blue;
      }),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    ),
  ),
  extensions: [
    const ColorSchemeTX(
      gradientPrimary: _Colors.blue,
      gradientSecondary: _Colors.black,
    ),
  ],
);
