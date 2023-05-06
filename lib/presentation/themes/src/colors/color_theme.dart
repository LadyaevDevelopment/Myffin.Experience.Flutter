part of '../../theme.dart';

class ColorThemeExtension extends ThemeExtension<ColorThemeExtension> {
  final Color systemNavbarBackgroundColor;
  final Brightness systemNavbarIconBrightness;
  // final Color appContainerBackground;
  // final Color appContainerShadow;
  // final Color selectedLabel;
  // final Color unselectedLabel;
  // final Color coursorColor;
  // final Color micIcon;
  // final Color settingsDialogLanguage;

  const ColorThemeExtension({
    required this.systemNavbarBackgroundColor,
    required this.systemNavbarIconBrightness,
    // required this.appContainerBackground,
    // required this.appContainerShadow,
    // required this.selectedLabel,
    // required this.unselectedLabel,
    // required this.coursorColor,
    // required this.micIcon,
    // required this.settingsDialogLanguage,
  });

  @override
  ThemeExtension<ColorThemeExtension> copyWith({
    Color? systemNavbarBackgroundColor,
    Brightness? systemNavbarIconBrightness,
    // Color? appContainerBackground,
    // Color? appContainerShadow,
    // Color? selectedLabel,
    // Color? unselectedLabel,
    // Color? coursorColor,
    // Color? micIcon,
    // Color? settingsDialogLanguage,
  }) {
    return ColorThemeExtension(
      systemNavbarBackgroundColor: systemNavbarBackgroundColor ?? this.systemNavbarBackgroundColor,
      systemNavbarIconBrightness: systemNavbarIconBrightness ?? this.systemNavbarIconBrightness,
      // appContainerBackground: appContainerBackground ?? this.appContainerBackground,
      // appContainerShadow: appContainerShadow ?? this.appContainerShadow,
      // selectedLabel: selectedLabel ?? this.selectedLabel,
      // unselectedLabel: unselectedLabel ?? this.unselectedLabel,
      // coursorColor: coursorColor ?? this.coursorColor,
      // micIcon: micIcon ?? this.micIcon,
      // settingsDialogLanguage: settingsDialogLanguage ?? this.settingsDialogLanguage,
    );
  }

  @override
  ThemeExtension<ColorThemeExtension> lerp(
    ThemeExtension<ColorThemeExtension>? other,
    double t,
  ) {
    if (other is! ColorThemeExtension) {
      return this;
    }

    return ColorThemeExtension(
        systemNavbarBackgroundColor: Color.lerp(systemNavbarBackgroundColor, other.systemNavbarBackgroundColor, t)!,
        systemNavbarIconBrightness: other.systemNavbarIconBrightness
        // appContainerBackground: Color.lerp(appContainerBackground, other.appContainerBackground, t)!,
        // appContainerShadow: Color.lerp(appContainerShadow, other.appContainerShadow, t)!,
        // selectedLabel: Color.lerp(selectedLabel, other.selectedLabel, t)!,
        // unselectedLabel: Color.lerp(unselectedLabel, other.unselectedLabel, t)!,
        // coursorColor: Color.lerp(coursorColor, other.coursorColor, t)!,
        // micIcon: Color.lerp(micIcon, other.micIcon, t)!,
        // settingsDialogLanguage: Color.lerp(settingsDialogLanguage, other.settingsDialogLanguage, t)!,
        );
  }

  static get light => const ColorThemeExtension(
      systemNavbarBackgroundColor: AppColors.white, systemNavbarIconBrightness: Brightness.dark
      // appContainerBackground: AppColors.white,
      // appContainerShadow: AppColors.lightGrey,
      // selectedLabel: AppColors.lightGrey,
      // unselectedLabel: AppColors.lightGrey,
      // coursorColor: AppColors.lightGrey,
      // micIcon: AppColors.lightGrey,
      // settingsDialogLanguage: AppColors.white,
      );

  static get dark => const ColorThemeExtension(
      systemNavbarBackgroundColor: AppColors.black, systemNavbarIconBrightness: Brightness.light
      // appContainerBackground: AppColors.lightGrey,
      // appContainerShadow: AppColors.lightGrey,
      // selectedLabel: AppColors.lightGrey,
      // unselectedLabel: AppColors.lightGrey,
      // coursorColor: AppColors.lightGrey,
      // micIcon: AppColors.lightGrey,
      // settingsDialogLanguage: AppColors.lightGrey,
      );
}
