import 'package:flutter/material.dart';

enum AppTheme {
  lightTheme,
  darkTheme,
}

class AppThemes {
  static final appThemeData = {
    AppTheme.darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
    AppTheme.lightTheme: ThemeData(primarySwatch: Colors.blue),
  };
}