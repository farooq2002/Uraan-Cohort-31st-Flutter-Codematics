import 'package:flutter/material.dart';

class ThemeText {
  ThemeText._();
  //================= DARK TEXT THEME ============================================
  static TextTheme darktextTheme = const TextTheme(
    displayLarge: TextStyle(
        letterSpacing: 4,
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400),
  );
//================= LIGHT TEXT THEME ============================================
  static TextTheme lightTextTheme = const TextTheme(
    displayLarge: TextStyle(
        letterSpacing: 4,
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w400),
  );
}
