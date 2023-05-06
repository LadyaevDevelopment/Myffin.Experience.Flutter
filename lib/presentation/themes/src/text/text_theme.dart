part of '../../theme.dart';

class TextThemeExtension extends ThemeExtension<TextThemeExtension> {
  final TextStyle externalLink;
  // final TextStyle appTitle;
  // final TextStyle appDescription;
  // final TextStyle labelStyle;
  // final TextStyle searchHint;
  // final TextStyle searchInput;
  // final TextStyle settingsDialogLanguage;

  TextThemeExtension({required this.externalLink
      // required this.appTitle,
      // required this.appDescription,
      // required this.labelStyle,
      // required this.searchHint,
      // required this.searchInput,
      // required this.settingsDialogLanguage,
      });

  @override
  ThemeExtension<TextThemeExtension> copyWith({TextStyle? externalLink
      // TextStyle? appBarTitle,
      // TextStyle? appTitle,
      // TextStyle? appDescription,
      // TextStyle? labelStyle,
      // TextStyle? searchHint,
      // TextStyle? searchInput,
      }) {
    return TextThemeExtension(externalLink: externalLink ?? this.externalLink
        // appTitle: appTitle ?? this.appTitle,
        // appDescription: appDescription ?? this.appDescription,
        // labelStyle: labelStyle ?? this.labelStyle,
        // searchHint: searchHint ?? this.searchHint,
        // searchInput: searchInput ?? this.searchInput,
        // settingsDialogLanguage: settingsDialogLanguage ?? this.settingsDialogLanguage,
        );
  }

  @override
  ThemeExtension<TextThemeExtension> lerp(
    ThemeExtension<TextThemeExtension>? other,
    double t,
  ) {
    if (other is! TextThemeExtension) {
      return this;
    }

    return TextThemeExtension(
      externalLink: TextStyle.lerp(externalLink, other.externalLink, t)!,
      // appTitle: TextStyle.lerp(appTitle, other.appTitle, t)!,
      // appDescription: TextStyle.lerp(appDescription, other.appDescription, t)!,
      // labelStyle: TextStyle.lerp(labelStyle, other.labelStyle, t)!,
      // searchHint: TextStyle.lerp(searchHint, other.searchHint, t)!,
      // searchInput: TextStyle.lerp(searchInput, other.searchInput, t)!,
      // settingsDialogLanguage: TextStyle.lerp(settingsDialogLanguage, other.settingsDialogLanguage, t)!,
    );
  }

  static get light => TextThemeExtension(
        externalLink: createLinkStyle(),
        // appTitle: headline1.copyWith(
        //   color: AppColors.lightGrey,
        //   fontWeight: FontWeight.w700,
        // ),
        // appDescription: headline3.copyWith(
        //   color: AppColors.lightGrey,
        //   fontWeight: FontWeight.w500,
        // ),
        // labelStyle: headline1.copyWith(
        //   fontWeight: FontWeight.w500,
        // ),
        // searchHint: headline1.copyWith(
        //   color: AppColors.white,
        //   fontSize: 18,
        // ),
        // searchInput: headline1.copyWith(
        //   fontSize: 18,
        // ),
        // settingsDialogLanguage: headline2.copyWith(
        //   color: AppColors.lightGrey,
        // ),
      );

  static get dark => TextThemeExtension(
        externalLink: createLinkStyle(),
        // appTitle: headline1.copyWith(
        //   color: AppColors.lightGrey,
        //   fontWeight: FontWeight.w700,
        // ),
        // appDescription: headline3.copyWith(
        //   color: AppColors.lightGrey,
        //   fontWeight: FontWeight.w500,
        // ),
        // labelStyle: headline1.copyWith(
        //   fontWeight: FontWeight.w500,
        // ),
        // searchHint: headline1.copyWith(
        //   color: AppColors.lightGrey,
        //   fontSize: 18,
        // ),
        // searchInput: headline1.copyWith(
        //   fontSize: 18,
        //   color: AppColors.lightGrey,
        // ),
        // settingsDialogLanguage: headline2.copyWith(
        //   color: AppColors.lightGrey,
        // ),
      );
}
