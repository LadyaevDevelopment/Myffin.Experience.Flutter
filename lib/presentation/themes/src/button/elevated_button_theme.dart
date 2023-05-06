part of '../../theme.dart';

ElevatedButtonThemeData createElevatedButtonTheme() {
  return ElevatedButtonThemeData(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.all(18),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          minimumSize: const Size.fromHeight(64)));
}
