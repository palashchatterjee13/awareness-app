import 'package:flutter/material.dart';
import 'drift_console.dart';

class DriftColor {
  static int hexToInt(String hexColor) {
    DriftConsole console = new DriftConsole();
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    int val = 0;

    // check valid length
    if (!((hexColor.length == 6) || (hexColor.length == 3))) {
      console.warn(
          'Ivalid HexaDecimal value passed: #$hexColor >cnl HexaDecimal values with only either 3 or 6 characters are accepted (excluding #) >cnl but found ${hexColor.length} characters: $hexColor ');
      return 0;
    }

    // if hex is 3 char
    if (hexColor.length == 3) {
      hexColor = hexColor[0] +
          hexColor[0] +
          hexColor[1] +
          hexColor[1] +
          hexColor[2] +
          hexColor[2];
    }

    // add opacity if not defined
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }

    for (int i = 0; i < hexColor.length; i++) {
      int hexDigit = hexColor.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (hexColor.length - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (hexColor.length - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (hexColor.length - 1 - i)));
      } else {
        console.warn(
            "Ivalid HexaDecimal value passed: #$hexColor >cnl Invalid Character found in HexaDecimal: ${hexColor[i]} ");
        return 0;
      }
    }
    return val;
  }

  static Color fromHex(String hexColor) {

    DriftConsole console = new DriftConsole();
    int res = hexToInt(hexColor);
    if (res == 0) {
      console.warn('Failed to convert HexaDecimal to Color as Invalid HexaDecimal Value was passed >cnl returning Black Color:  Color(0x00000000)');
    }
    return Color(res);

  } // fromHex

  static Color fromInt(int color) {
    return Color(color);
  } // fromInt

  static Color fromNum(int color) {
    return Color(color);
  } // fromNum

  static MaterialColor makeMaterial(Color color) {

    return MaterialColor(color.value, <int, Color> {
      50: color.withOpacity(.1),
      100: color.withOpacity(.2),
      200: color.withOpacity(.3),
      300: color.withOpacity(.4),
      400: color.withOpacity(.5),
      500: color.withOpacity(.6),
      600: color.withOpacity(.7),
      700: color.withOpacity(.8),
      800: color.withOpacity(.9),
      900: color.withOpacity(1),
    });
  }

  static getHex(Color color) {
    return '#${(color.value & 0xFFFFFF).toRadixString(16).padLeft(6, '0').toUpperCase()}';
  }
}
