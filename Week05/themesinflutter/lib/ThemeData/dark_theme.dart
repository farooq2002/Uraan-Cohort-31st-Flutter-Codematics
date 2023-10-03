import 'package:flutter/material.dart';
import 'package:themesinflutter/ThemeData/app_colors.dart';
import 'package:themesinflutter/ThemeData/text_theme.dart';

class DarkTheme {
  DarkTheme._();

  //================= DARK THEME ============================================
  static ThemeData darktheme = ThemeData(
      brightness: Brightness.dark,
      appBarTheme: appBarTheme,
      hintColor: Colors.white,
      textTheme: ThemeText.darktextTheme);
//================= DARK APPBAR THEME ============================================
  static AppBarTheme appBarTheme = const AppBarTheme(
      centerTitle: true,
      elevation: 4,
      backgroundColor: AppColors.darkAppBackground,
      titleSpacing: 2);

  //================= DARK ICON THEME ============================================
  static IconThemeData iconTheme =
      const IconThemeData(color: AppColors.darkIconColor);
}
