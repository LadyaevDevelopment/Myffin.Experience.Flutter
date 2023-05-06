part of '../theme.dart';

const TextStyle bodySmall = TextStyle(fontWeight: FontWeight.w500, fontSize: 14, height: 1.5);
const TextStyle bodyMedium = TextStyle(fontWeight: FontWeight.w500, fontSize: 16);
const TextStyle bodyLarge = TextStyle(fontWeight: FontWeight.w500, fontSize: 18);

TextTheme createTextTheme(Color bodyTextColor) {
  return TextTheme(
    bodySmall: bodySmall.copyWith(color: bodyTextColor),
    bodyMedium: bodyMedium.copyWith(color: bodyTextColor),
    bodyLarge: bodyLarge.copyWith(color: bodyTextColor),
  );
}

TextStyle createLinkStyle() {
  return bodySmall.copyWith(color: AppColors.blue);
}
