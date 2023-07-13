import 'package:flutter/material.dart';

extension ColorExtension on String {
  Color toColor() {
    String hexColor = replaceAll("#", "");
    int colorInt = int.parse("FF$hexColor", radix: 16);
    return Color(colorInt);
  }
}

class AppTheme {
  static final backgroundColor1 = "#44197A".toColor();
  static final backgroundColor2 = "#29176C".toColor();
  static final backgroundColor3 = "#0A082D".toColor();
  static final backgroundColor4 = "#043A57".toColor();
  static final backgroundColor5 = "#06213E".toColor();
  static final backgroundColor6 = "#071633".toColor();
  static final buttonColor = "#FE5B02".toColor();
  static final socialButtonBgColor = "#0b1528".toColor();
  final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final linearGradient = LinearGradient(
    colors: [
      AppTheme.backgroundColor6,
      AppTheme.backgroundColor5,
      AppTheme.backgroundColor4,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 650 &&
      MediaQuery.of(context).size.width < 1100;
}
