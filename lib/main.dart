import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myffin_experience_flutter/extensions/theme_data_extensions.dart';
import 'package:myffin_experience_flutter/presentation/access_control_flow/start_menu_screen.dart';
import 'package:myffin_experience_flutter/presentation/themes/theme.dart';
import 'package:theme_manager/theme_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyffinApp());
}

class MyffinApp extends StatelessWidget {
  const MyffinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeManager(
      defaultBrightnessPreference: BrightnessPreference.system,
      data: (Brightness brightness) {
        final theme = brightness == Brightness.light ? createLightTheme() : createDarkTheme();
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            systemNavigationBarColor: theme.androidSystemNavbar.backgroundColor,
            systemNavigationBarIconBrightness: theme.androidSystemNavbar.iconBrightness));
        return theme;
      },
      loadBrightnessOnStart: true,
      themedWidgetBuilder: (BuildContext context, ThemeData theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: const StartMenuScreen(),
        );
      },
    );
  }
}
