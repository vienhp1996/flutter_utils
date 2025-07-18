import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

final Color cRed = HexColor("#F03553");
final Color cBlue = HexColor("#0560A6");
final Color cPrimary = HexColor("#0560A6");
final Color cSecondary = HexColor("#F89623");
final Color cGrey = HexColor("#AAAAAA");
final Color cGreen = HexColor("50BD46");
final Color cDark = HexColor("363636");
final Color cDark80 = HexColor("808080");
final Color cBorder = HexColor("E5E5E5");
final Color cSilver = HexColor("F6F6F6");
final Color cRuby = HexColor("FF0000");
final Color cRubyLight = HexColor("FF0000").withOpacity(0.8);
final Color cBlood = HexColor("BF263C");
final Color cBasil = HexColor("50BD46");
final Color cBasil0 = HexColor("079541");
final Color cBasil1 = HexColor("F9EB25");
final Color cOnline = HexColor("30CD52");
final Color cOffline = HexColor("E74C3C");
final Color cCheckout = HexColor("FCB94D");
final Color cBorderEE = HexColor("EEEEEE");
final Color cBgSearch = HexColor("E4E3E9");
final Color cTextPrimary = HexColor("363636");
final Color cTextSecondary = HexColor("AAAAAA");
final Color cTextWarning = HexColor("F89523");
final Color cTextDanger = HexColor("E74C3C");
final Color cTextSuccess = HexColor("2FBC47");
final Color cTextSuccess2 = HexColor("135415");
final Color cBackgroundF5 = HexColor("F5F5F5");
final Color cBackgroundWhite = HexColor("FFFFFF");
final Color cBackgroundAAA = HexColor("AAAAAA");
final Color cBackgroundWarning = HexColor("fef7e1");
final Color cTextWarning2 = HexColor("c9a84c");
final Color cTextBlack = HexColor("363636");
final Color cTextPurple = HexColor("6C4D9F");

final Color bSecondary = HexColor("E5E5E5");
final Color bPrimary = HexColor("#0560A6");

final Color dGrey = HexColor("#EEEEEE");
final Color cDivider = HexColor("#F3F3F3");

final LinearGradient primaryGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF6F4BFF),
    Color(0xFF0560A6),
  ],
);

class CColors {
  final Color cDark = HexColor("363636");
}

class GradientPalette {
  static List<Color> orange = [HexColor('FFE769'), HexColor('FF6969')];
  static List<Color> basil = [
    cBasil1.withOpacity(.8),
    cBasil0,
  ];
  static List<Color> blue = [HexColor('00AEEF'), HexColor('005DA4')];
}

class listColor {
  static List<Color> listChartColors = [
    HexColor("#0560A6"),
    HexColor("#0A8DF1"),
    HexColor("#7E0AF1"),
    HexColor("#F1B10A"),
    HexColor("#F16B0A"),
    HexColor("#F10A0A"),
    HexColor("#6DC348"),
    HexColor("#46C2DC"),
    HexColor("#CC007D"),
    HexColor("#C6B985"),
  ];
}
