import 'package:flutter/material.dart';
import 'package:myffin_experience_flutter/presentation/themes/theme.dart';

class Styles {
  static ButtonStyle secondaryTextButton() {
    return TextButton.styleFrom(
      backgroundColor: AppColors.lightGrey,
      foregroundColor: AppColors.black,
    );
  }

  static ButtonStyle primaryTextButton() {
    return TextButton.styleFrom(
      backgroundColor: AppColors.blue,
      foregroundColor: AppColors.white,
    );
  }
}
