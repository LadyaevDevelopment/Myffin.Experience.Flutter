part of '../theme.dart';

ThemeData createLightTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    scaffoldBackgroundColor: AppColors.white,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.light,
      ThemeTextStyles.light,
    ],
    appBarTheme: AppBarTheme(
      color: AppColors.white,
      iconTheme: const IconThemeData(color: AppColors.lightGrey),
      titleTextStyle: headline1.copyWith(
        color: AppColors.lightGrey,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.white,
      titleTextStyle: headline1.copyWith(
        color: AppColors.lightGrey,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      contentTextStyle: headline1.copyWith(
        color: AppColors.lightGrey,
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.white,
      textStyle: headline1.copyWith(
        color: AppColors.lightGrey,
      ),
    ),
  );
}
