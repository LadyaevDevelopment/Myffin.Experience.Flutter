import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:myffin_experience_flutter/di/dependencies.dart';
import 'package:myffin_experience_flutter/extensions/theme_data.dart';
import 'package:myffin_experience_flutter/generated/l10n.dart';
import 'package:myffin_experience_flutter/presentation/access_control_flow/start_menu_screen/start_menu_screen.dart';
import 'package:myffin_experience_flutter/presentation/bloc_observer.dart';
import 'package:myffin_experience_flutter/presentation/themes/theme.dart';
import 'package:theme_manager/theme_manager.dart';

void main() {
  initDependencyInjection();
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = 'en';
  Bloc.observer = SimpleBlocObserver();
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
            systemNavigationBarColor: theme.colors.systemNavbarBackgroundColor,
            systemNavigationBarIconBrightness: theme.colors.systemNavbarIconBrightness));
        return theme;
      },
      loadBrightnessOnStart: true,
      themedWidgetBuilder: (BuildContext context, ThemeData theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: const StartMenuScreen(),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          supportedLocales: S.delegate.supportedLocales,
        );
      },
    );
  }
}
