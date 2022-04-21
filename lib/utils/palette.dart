import 'package:flutter/material.dart';

// Applications Palette
class Palette {

//BottomNavigationbar Colour
static const Color greyFontColour = Color(0xff999999);

//Active Font Color
static const Color redColor = Color(0xffFF1800);

//Refund Font Colour
static const Color refundFontColour = Color(0xff7B61FF);

//SuccessFul Font Colour
  static const Color successfulFontColour = Color(0xff519F15);

//All font Colour
  static const Color blackColour1 = Color(0xff000000);

  //pending Font Colour
  static const Color yellowColor = Color(0xffFFA800);

static const Color navyBlueColor = Color(0xff172B85);

static const Color whiteColor = Color(0xffFFFFFF);
  // text color swatches
  static const Map<int, Color> blackColorSwatch = {
    50: Color.fromRGBO(42, 42, 42, .1),
    100: Color.fromRGBO(42, 42, 42, .2),
    200: Color.fromRGBO(42, 42, 42, .3),
    300: Color.fromRGBO(42, 42, 42, .4),
    400: Color.fromRGBO(42, 42, 42, .5),
    500: Color.fromRGBO(42, 42, 42, .6),
    600: Color.fromRGBO(42, 42, 42, .7),
    700: Color.fromRGBO(42, 42, 42, .8),
    800: Color.fromRGBO(42, 42, 42, .9),
    900: Color.fromRGBO(42, 42, 42, 1),
  };

  // text color
  static const MaterialColor blackColor =
      MaterialColor(0xff2A2A2A, blackColorSwatch);
}
