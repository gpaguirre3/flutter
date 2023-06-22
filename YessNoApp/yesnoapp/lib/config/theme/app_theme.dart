import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 98, 55, 168);

const List<Color> _colorThemes = [
  _customColor,
  Colors.black,
  Colors.white,
  Colors.red,
  Colors.yellow,
  Colors.pink,
  Colors.green,
  Colors.orange,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length -1,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor],
        //brightness: Brightness.dark
        );
  }
}
