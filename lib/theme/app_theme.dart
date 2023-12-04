import 'package:flutter_application_example/screens/screen.dart';

class AppTheme {
  static const Color primary = Colors.green;
  static const Color second = Colors.orangeAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 4),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: Colors.orangeAccent)),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: Colors.indigo),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: Colors.indigo,
        shape: const StadiumBorder(),
        elevation: 10,
      )));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 4));
}
