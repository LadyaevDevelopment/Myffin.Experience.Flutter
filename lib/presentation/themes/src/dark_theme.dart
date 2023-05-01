part of '../theme.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.lightBlack,
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
            statusBarColor: AppColors.lightBlack),
        elevation: 0),
    fontFamily: fontFamily,
    elevatedButtonTheme: createElevatedButtonTheme(),
    textTheme: createTextTheme(AppColors.secondaryText),
    // textTheme: createTextTheme(),
    // scaffoldBackgroundColor: AppColors.lightGrey,
    extensions: <ThemeExtension<dynamic>>[
      AndroidSystemNavbar.dark
      // ThemeColors.light,
      // ThemeTextStyles.light,
    ],
    // appBarTheme: AppBarTheme(
    //   color: AppColors.lightGrey,
    //   iconTheme: const IconThemeData(color: AppColors.lightGrey),
    //   titleTextStyle: headline1.copyWith(
    //     color: AppColors.lightGrey,
    //     fontSize: 20,
    //     fontWeight: FontWeight.w600,
    //   ),
    // ),
    // dialogTheme: DialogTheme(
    //   backgroundColor: AppColors.lightGrey,
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
    //   color: AppColors.lightGrey,
    //   textStyle: headline1.copyWith(
    //     color: AppColors.lightGrey,
    //   ),
    // ),
  );
}
