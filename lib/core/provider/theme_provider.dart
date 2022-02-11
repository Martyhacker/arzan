import 'package:arzan/core/constants/palette.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.grey.shade900,
  primarySwatch: Colors.green,
  colorScheme: const ColorScheme.dark(),
  textTheme: const TextTheme(headline6: TextStyle(color: Colors.black)),
  inputDecorationTheme: InputDecorationTheme(
      focusColor: Colors.green,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.transparent)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.transparent))),
);

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Palette.kGrey,
  primarySwatch: Colors.green,
  inputDecorationTheme: InputDecorationTheme(
      focusColor: Colors.green,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.transparent)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.transparent))),
  colorScheme: const ColorScheme.light(),
  textTheme: const TextTheme(headline6: TextStyle(color: Colors.black)),
);

class ThemeProvider with ChangeNotifier {
  static SharedPreferences? _shPrefObject;
  bool _isDark = false;
  bool get isDark => _isDark;
  ThemeProvider({bool isDa = false}) {
    _isDark = isDa;
  }
  ThemeData get themeColor {
    return _isDark ? darkTheme : lightTheme;
  }

  Future<void> toggleTheme() async {
    _shPrefObject = await SharedPreferences.getInstance();
    _isDark = !_isDark;
    await _shPrefObject!.setBool('isDark', _isDark);
    notifyListeners();
  }
}
