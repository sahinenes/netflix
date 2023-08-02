import 'package:flutter/material.dart';
import 'theme_data.dart';

class AppTheme {
  AppTheme._init();
  static AppTheme? _instance;
  static AppTheme get instance {
    _instance ??= AppTheme._init();
    return _instance!;
  }

  ThemeData theme = appTheme;
}
