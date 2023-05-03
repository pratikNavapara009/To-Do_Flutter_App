import 'package:flutter/material.dart';
import '../models/theme_model.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeModel themeModel = ThemeModel(isDark: false);

  void changeTheme() {
    themeModel.isDark = !themeModel.isDark;
    notifyListeners();
  }
}
