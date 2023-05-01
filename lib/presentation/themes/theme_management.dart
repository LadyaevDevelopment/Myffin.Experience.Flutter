import 'package:flutter/cupertino.dart';
import 'package:theme_manager/theme_manager.dart';

void setSystemTheme(BuildContext context) =>
    ThemeManager.of(context).setBrightnessPreference(BrightnessPreference.system);
void setLightTheme(BuildContext context) =>
    ThemeManager.of(context).setBrightnessPreference(BrightnessPreference.light);
void setDarkTheme(BuildContext context) => ThemeManager.of(context).setBrightnessPreference(BrightnessPreference.dark);
