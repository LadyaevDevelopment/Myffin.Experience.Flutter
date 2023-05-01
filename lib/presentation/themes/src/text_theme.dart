part of '../theme.dart';

TextTheme createTextTheme(Color bodyTextColor) {
  return TextTheme(
    displayLarge: headline1,
    displayMedium: headline2,
    displaySmall: headline3,
    bodySmall: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: bodyTextColor, height: 1.5),
    bodyMedium: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: bodyTextColor),
    bodyLarge: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: bodyTextColor),
  );
}
