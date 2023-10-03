import 'package:flutter/material.dart';
import 'package:themesinflutter/ThemeData/app_colors.dart';
import 'package:themesinflutter/ThemeData/text_theme.dart';

class LightTheme {
  LightTheme._();
  //================= LIGHT TEXT THEME ============================================
  static ThemeData lighttheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.deepPurple,
      appBarTheme: lightAppBarTheme,
      scaffoldBackgroundColor:
          AppColors.lightBackground, // Set the background color to white
      textTheme: ThemeText.darktextTheme);
  //================= LIGHT APPBAR THEME ============================================
  static AppBarTheme lightAppBarTheme = const AppBarTheme(
      centerTitle: true,
      elevation: 3,
      backgroundColor: AppColors.lightAppbarBackground,
      titleSpacing: 2);
  //================= LIGHT ICON THEME ============================================

  //**************************************************************************
}
