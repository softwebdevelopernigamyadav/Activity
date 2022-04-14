import 'package:activity_app/constants/app_constants.dart';
import 'package:activity_app/utils/palette.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  // TextScaleFactor
  static const double textScaleFactor = 1.0;

  // App theme data
  static ThemeData theme() {
    return ThemeData(
      // pageTransitionsTheme: PageTransitionsTheme(builders: {
      //   TargetPlatform.android: AndroidTransition(),
      // }),
     // primarySwatch: Palette.primaryColor,
      fontFamily: kRaleway,
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          overlayColor:
              MaterialStateProperty.all<Color>(Palette.refundFontColour),
        ),
      ),
      textTheme: const TextTheme(
        bodyText2: TextStyle(
          height: textScaleFactor,
          fontFamily: kRaleway,
        ),
        headline1: TextStyle(
          height: textScaleFactor,
          fontFamily: kRaleway,
        ),
        bodyText1: TextStyle(
          height: textScaleFactor,
          fontFamily: kRaleway,
        ),
        button: TextStyle(
          height: textScaleFactor,
          fontFamily: kRaleway,
        ),
        caption: TextStyle(
          height: textScaleFactor,
          fontFamily: kRaleway,
        ),
        headline2: TextStyle(
          height: textScaleFactor,
          fontFamily: kRaleway,
        ),
        headline3: TextStyle(
          height: textScaleFactor,
          fontFamily: kRaleway,
        ),
        headline4: TextStyle(
          height: textScaleFactor,
          fontFamily: kRaleway,
        ),
        headline5: TextStyle(
          height: textScaleFactor,
          fontFamily: kRaleway,
        ),
        headline6: TextStyle(
          height: textScaleFactor,
          fontFamily: kRaleway,
        ),
        overline: TextStyle(
          height: textScaleFactor,
          fontFamily: kRaleway,
        ),
        subtitle1: TextStyle(
          height: textScaleFactor,
          fontFamily: kRaleway,
        ),
        subtitle2: TextStyle(
          height: textScaleFactor,
          fontFamily: kRaleway,
        ),
      ),
    );
  }
}

/*class AndroidTransition extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    animation = CurvedAnimation(
      parent: animation,
      curve: Curves.linearToEaseOut,
      reverseCurve: Curves.easeInToLinear,
    );
    return SlideTransition(
      transformHitTests: false,
      position: animation.drive(
        Tween(
          begin: const Offset(1.0, 0.0),
          end: Offset.zero,
        ),
      ),
      child: child,
    );
  }
}*/
