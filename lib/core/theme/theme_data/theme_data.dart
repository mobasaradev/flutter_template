import 'package:flutter/material.dart';

import '../colors.dart';
import '../../extension/extension.dart';
part 'light_theme_data.dart';
part 'dark_theme_data.dart';

class AppThemeData {
  static ThemeData get light => _LightThemeData.build();
  static ThemeData get dark => _DarkThemeData.build();
}