import 'package:flutter/material.dart';

// 10 .vıdeo 45 dk
class LighTheme {
  // ınıt state gıbı durum olmadıgı için _LightColor LifhtTheme kullanmak için
  //1. theme late atadı 2. ınılıalize etti . Ondan sonra color atayabilir
  final _lightColor = _LightColor();

  late ThemeData theme;

  LighTheme() {
    theme = ThemeData(
        appBarTheme: const AppBarTheme(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)))),
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.green),
        buttonTheme: ButtonThemeData(
            colorScheme: ColorScheme.light(
                onPrimary: Colors.purple, onSecondary: _lightColor.blueMenia)),
        colorScheme: const ColorScheme.light(),
        checkboxTheme: CheckboxThemeData(
            fillColor: WidgetStateProperty.all(Colors.green),
            side: const BorderSide(color: Colors.green)),
        textTheme: ThemeData.light().textTheme.copyWith(
            titleMedium:
                TextStyle(fontSize: 25, color: _lightColor._textColor)));
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 37, 5, 5);
  final Color blueMenia = const Color.fromARGB(95, 188, 248, 1);
}
