import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myffin_experience_flutter/helpers/color_resources.dart';
import 'package:myffin_experience_flutter/presentation/access_control_flow/start_menu_screen.dart';

void main() {
  runApp(const MyffinApp());
}

class MyffinApp extends StatelessWidget {
  const MyffinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Inter',
          appBarTheme: const AppBarTheme(
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.light,
                statusBarIconBrightness: Brightness.dark,
                statusBarColor: ColorResources.white),
          ),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
            padding: const EdgeInsets.all(18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          )),
          textTheme: const TextTheme(
            bodySmall: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: ColorResources.secondaryText),
            bodyMedium: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: ColorResources.secondaryText),
            bodyLarge: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: ColorResources.secondaryText),
          )),
      home: const StartMenuScreen(),
    );
  }
}
