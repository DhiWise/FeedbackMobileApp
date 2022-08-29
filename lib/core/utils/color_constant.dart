import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color bluegray900 = fromHex('#333438');

  static Color gray700 = fromHex('#666666');

  static Color gray500 = fromHex('#aaaaaa');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color indigoA200 = fromHex('#525df9');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray300 = fromHex('#dddddd');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
