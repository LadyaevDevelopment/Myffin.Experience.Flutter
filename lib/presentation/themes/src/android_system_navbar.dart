part of '../theme.dart';

class AndroidSystemNavbar extends ThemeExtension<AndroidSystemNavbar> {
  final Color backgroundColor;
  final Brightness iconBrightness;

  const AndroidSystemNavbar({
    required this.backgroundColor,
    required this.iconBrightness,
  });

  @override
  ThemeExtension<AndroidSystemNavbar> copyWith({
    Color? backgroundColor,
    Brightness? iconBrightness,
  }) {
    return AndroidSystemNavbar(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      iconBrightness: iconBrightness ?? this.iconBrightness,
    );
  }

  @override
  ThemeExtension<AndroidSystemNavbar> lerp(
    ThemeExtension<AndroidSystemNavbar>? other,
    double t,
  ) {
    if (other is! AndroidSystemNavbar) {
      return this;
    }

    return AndroidSystemNavbar(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      iconBrightness: other.iconBrightness,
    );
  }

  static get light => const AndroidSystemNavbar(
        backgroundColor: AppColors.white,
        iconBrightness: Brightness.dark,
      );

  static get dark => const AndroidSystemNavbar(
        backgroundColor: AppColors.black,
        iconBrightness: Brightness.light,
      );
}
