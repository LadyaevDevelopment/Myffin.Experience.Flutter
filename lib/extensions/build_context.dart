import 'package:flutter/material.dart';
import 'package:myffin_experience_flutter/extensions/theme_data.dart';
import 'package:myffin_experience_flutter/presentation/themes/theme.dart';

extension BuildContextExtensions on BuildContext {
  // AppLocalizations get localizations => AppLocalizations.of(this)!;

  TextThemeExtension get text => Theme.of(this).extension<TextThemeExtension>()!;

  ColorThemeExtension get colors => Theme.of(this).colors;

  // ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;

  // ThemeGradients get gradient => Theme.of(this).extension<ThemeGradients>()!;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}
