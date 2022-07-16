import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

class AppThemes {
  static final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    fontFamily: 'Montserrat',
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      titleLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: primaryGreen,
      ),
      titleMedium: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    scaffoldBackgroundColor: Colors.black,
  );

  static final lightTheme = ThemeData(
    fontFamily: 'Montserrat',
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    ),
  );
}
