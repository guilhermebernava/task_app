import 'package:flutter/material.dart';

class AppColors {
  static const lightBlack = Color(0xff2B2436);
  static const darkPurple = Color(0xff311D4F);
  static const purple = Color(0xff513082);
  static const lightPurple = Color(0xffA68ACF);
  static const whitePurple = Color(0xff685782);
}

class PrimaryAppColor {
  static const _color = 0xff513082;

  static const Map<int, Color> _colors = {
    50: Color.fromRGBO(81, 48, 130, 0.098),
    100: Color.fromRGBO(81, 48, 130, .2),
    200: Color.fromRGBO(81, 48, 130, .3),
    300: Color.fromRGBO(81, 48, 130, .4),
    400: Color.fromRGBO(81, 48, 130, .5),
    500: Color.fromRGBO(81, 48, 130, .6),
    600: Color.fromRGBO(81, 48, 130, .7),
    700: Color.fromRGBO(81, 48, 130, .8),
    800: Color.fromRGBO(81, 48, 130, .9),
    900: Color.fromRGBO(81, 48, 130, 1),
  };

  static final appMaterialColor = ColorScheme.fromSwatch(
          primarySwatch: const MaterialColor(_color, _colors))
      .copyWith(secondary: AppColors.purple);
}
