import 'package:flutter/material.dart';
import 'package:flutter_learn/400/theme/custom_dark_theme.dart';
import 'package:flutter_learn/400/theme/custom_light_theme.dart';

class ThemeNotifier extends ChangeNotifier {
  bool isLightTheme = false;

  void changeTheme() {
    isLightTheme = !isLightTheme;
    notifyListeners();
  }

  ThemeData get currentTheme => isLightTheme ? CustomLightTheme().themeData : CustomDarkTheme().themeData;
}
