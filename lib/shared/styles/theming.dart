import 'package:flutter/material.dart';

import 'colors.dart';

class MyThemeData {
  static ThemeData LightTheme = ThemeData(
    scaffoldBackgroundColor: mintGreen,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primary,
      backgroundColor: Colors.transparent,
      unselectedItemColor: Colors.grey,
    ),
  );
}
