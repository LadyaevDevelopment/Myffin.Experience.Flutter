
import 'package:flutter/material.dart';
import 'package:myffin_experience_flutter/presentation/themes/theme.dart';

extension ThemeDataExtensions on ThemeData {
  ColorThemeExtension get colors => extension<ColorThemeExtension>()!;
}
