import 'package:flutter/foundation.dart';

class ThemeProvider extends ChangeNotifier {
  bool is_dark_theme = false;

  bool get getThemeStatus => is_dark_theme;

  static void themeStatus(bool isDarkTheme) {}
}
