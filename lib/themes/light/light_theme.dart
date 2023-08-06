import 'package:flutter/material.dart';

import '../../gen/fonts.gen.dart';

part 'colors.dart';

final lightTheme = ThemeData.light().copyWith(
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
      color: _Colors.black,
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
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: _Colors.regentGray,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
          color: _Colors.white,
        ),
      ),
    ),
  ),
);
