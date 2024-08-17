import 'package:flutter/material.dart';
import 'package:full_learn_flutter/202/theme/a10_2_light_theme.dart';

//15 vid 56 provider
class ThemeNotifer extends ChangeNotifier {
  // tum sayfalar etkilenecegi icin ChangeNotifier kullandik
  bool isLighTheme = false;

  void changeTheme() {
    isLighTheme = !isLighTheme;
    notifyListeners();
  }

  ThemeData get currentTheme => !isLighTheme
      ? LighTheme().theme
      : ThemeData.dark(); // computed property runtime degisecek hesaplanacak
}
