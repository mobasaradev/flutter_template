import 'package:flutter/material.dart';

import 'extension.dart';

extension ThemeContextExtension on BuildContext {
  TextStyleExtension get textStyle => Theme.of(this).extension<TextStyleExtension>()!;
  ColorExtension get color => Theme.of(this).extension<ColorExtension>()!;
}

