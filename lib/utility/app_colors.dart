import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static final Color appGreen = Color(0xFF00A85A);
  static final Color appRed = Colors.red;
  static final Color dashboarBackground = Color(0xFFBFE7FF);
  static final Color textFieldHintColor = Color(0xFF959595);
  static final Color appGreen2 = Color(0xFF059157);
  static final Color darkGreen = Color(0xFF045860);
  static final Color paleGold = Color(0xFFFBF1CC);
  static final Color gold = Color(0xFFECBD22);
  static final Color cancelColor = Color(0xFFAAB2BE);
  static final Color grey = Color(0xFFC4C4C4);
  static final Color textGrey = Color(0xFF939BA9);
  static final Color greyLineColor = Color(0xFFE6ECF6);
  static const Color lightGrey = Color(0xFFF5F5F5);
  static final Color grey22 = Color(0xFF222222);
  static final Color grey95 = Color(0xFF959595);
  static final Color greyD5 = Color(0xFFD5D5D5);
  static final Color greyD9 = Color(0xFFD9D9D9);
  static final Color tokenFieldBorderColor = Color(0xFFBDBDBD);
  static final Color black30 = Colors.black.withOpacity(.30);
  static final Color appYellow = Color(0xFFFFCC00);
  static final Color paleYellow = Color(0xFFFBF1CC);
  static final Color activeIconColor = Color(0xFFFFCC00);
  static final Color inactiveIconColor = Color(0xFF959595);
  static final Color grey75 = Color(0xFF757575);
  static final Color greyF4 = Color(0xFFF4F4F4);
  static final Color grey4F = Color(0xFF4F4F4F);
  static final Color greyF5 = Color(0xFFF5F5F5);
  static final Color greyE5 = Color(0xFFE5E5E5);
  static final Color deepGrey = Color(0xFF263238);
  static final Color white = Colors.white;
  static final Color black = Colors.black;

  static const Color primaryColor = Color(0xFF0066FF);
  static const Color secondaryColor = Color(0xFFFFCC00);

  static const Color borderGrey = Color(0xFFD5D5D5);

  static const Color transparent = Color(0x00000000);
  static const Color transparentBlack = Color(0x99000000);

  static const Color tabOrange = Color(0xFFFBF1CC);
  static const Color iconOrange = Color(0xFFFFCC00);
  static const Color iconGrey = Color(0xFF959595);

  static final Map<int, Color> _color = {
    50: Color.fromRGBO(0, 102, 255, .1),
    100: Color.fromRGBO(0, 102, 255, .2),
    200: Color.fromRGBO(0, 102, 255, .3),
    300: Color.fromRGBO(0, 102, 255, .4),
    400: Color.fromRGBO(0, 102, 255, .5),
    500: Color.fromRGBO(0, 102, 255, .6),
    600: Color.fromRGBO(0, 102, 255, .7),
    700: Color.fromRGBO(0, 102, 255, .8),
    800: Color.fromRGBO(0, 102, 255, .9),
    900: Color.fromRGBO(0, 102, 255, 1),
  };
  static final MaterialColor appColorSwatch =
      MaterialColor(appGreen.value, _color);
}
