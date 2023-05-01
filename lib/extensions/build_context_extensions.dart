import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  // AppLocalizations get localizations => AppLocalizations.of(this)!;

  // ThemeTextStyles get text => Theme.of(this).extension<ThemeTextStyles>()!;

  // ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;

  // ThemeGradients get gradient => Theme.of(this).extension<ThemeGradients>()!;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}
