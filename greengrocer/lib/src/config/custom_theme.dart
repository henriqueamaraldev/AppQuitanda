import 'package:flutter/material.dart';

final Map<int, Color> _primaryOpacity = {
  50: const Color.fromRGBO(27, 27, 213, .1),
  100: const Color.fromRGBO(27, 27, 213, .2),
  200: const Color.fromRGBO(27, 27, 213, .3),
  300: const Color.fromRGBO(27, 27, 213, .4),
  400: const Color.fromRGBO(27, 27, 213, .5),
  500: const Color.fromRGBO(27, 27, 213, .6),
  600: const Color.fromRGBO(27, 27, 213, .7),
  700: const Color.fromRGBO(27, 27, 213, .8),
  800: const Color.fromRGBO(27, 27, 213, .9),
  900: const Color.fromRGBO(27, 27, 213, 1),
};

abstract class CustomTheme {
  static Color details = Colors.red.shade700;

  static MaterialColor primary = MaterialColor(
    0xFF1B1BD5,
    _primaryOpacity,
  );

  static Color secondary = Colors.white;
}
