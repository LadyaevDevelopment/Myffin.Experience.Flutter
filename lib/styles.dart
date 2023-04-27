import 'package:flutter/material.dart';
import 'package:myffin_experience_flutter/helpers/color_resources.dart';

class Styles {
  static ButtonStyle secondaryTextButton() {
    return TextButton.styleFrom(
      backgroundColor: ColorResources.lightGrey,
      foregroundColor: ColorResources.primaryText,
    );
  }

  static ButtonStyle primaryTextButton() {
    return TextButton.styleFrom(
      backgroundColor: ColorResources.blue,
      foregroundColor: ColorResources.white,
    );
  }
}
