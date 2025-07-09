import 'package:flutter/material.dart';

import '../../extension/extension.dart';
import '../colors.dart';

part './part/app_bar_theme.dart';
part './part/button_theme.dart';
part './part/input_decoration.dart';
part 'dark_theme_data.dart';
part 'light_theme_data.dart';

class AppThemeData {
  static ThemeData get light => _LightThemeData.call();
  static ThemeData get dark => _DarkThemeData.call();
}
