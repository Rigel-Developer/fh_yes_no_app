import 'package:flutter/material.dart';

const Color _customColor = const Color(0xFF00FF00);

const List<Color> _customColors = [
  _customColor,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
];

class AppTheme {
  final int colorIndex;

  AppTheme({this.colorIndex = 0})
      : assert(colorIndex >= 0 && colorIndex < _customColors.length);

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _customColors[colorIndex],
    );
  }
}
