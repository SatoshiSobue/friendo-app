import 'package:flutter/material.dart';
class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
  static int _getColorFromHex(String hexColor) {
    final processedHexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (processedHexColor.length == 6) {
      return int.parse('FF$processedHexColor', radix: 16);
    } else {
      return int.parse(processedHexColor, radix: 16);
    }
  }
}
