part of '../theme.dart';

ThemeData createLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: AppColors.white),
        elevation: 0),
    fontFamily: fontFamily,
    elevatedButtonTheme: createElevatedButtonTheme(),
    textTheme: createTextTheme(AppColors.textBody),
    // scaffoldBackgroundColor: AppColors.white,
    extensions: <ThemeExtension<dynamic>>[
      ColorThemeExtension.light,
      TextThemeExtension.light,
    ],
    // appBarTheme: AppBarTheme(
    //   color: AppColors.white,
    //   iconTheme: const IconThemeData(color: AppColors.lightGrey),
    //   titleTextStyle: headline1.copyWith(
    //     color: AppColors.lightGrey,
    //     fontSize: 20,
    //     fontWeight: FontWeight.w600,
    //   ),
    // ),
    // dialogTheme: DialogTheme(
    //   backgroundColor: AppColors.white,
    //   titleTextStyle: headline1.copyWith(
    //     color: AppColors.lightGrey,
    //     fontSize: 20,
    //     fontWeight: FontWeight.w500,
    //   ),
    //   contentTextStyle: headline1.copyWith(
    //     color: AppColors.lightGrey,
    //   ),
    // ),
    // popupMenuTheme: PopupMenuThemeData(
    //   color: AppColors.white,
    //   textStyle: headline1.copyWith(
    //     color: AppColors.lightGrey,
    //   ),
    // ),
  );
}
