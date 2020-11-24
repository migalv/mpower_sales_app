import 'package:flutter/material.dart';
import 'package:sales_app/presentation/themes/colors.dart';

class MPowerBasicTheme {
  final ThemeData base = ThemeData.light();
  // .copyWith(
  //   accentColor: secondaryMain,
  //   colorScheme: const ColorScheme(
  //     background: background,
  //     brightness: Brightness.light,
  //     error: errorColor,
  //     onBackground: Colors.black87,
  //     onError: Colors.white,
  //     onSurface: Colors.black87,
  //     onSecondary: Colors.black87,
  //     onPrimary: Colors.black,
  //     primary: primaryMain,
  //     primaryVariant: primaryMain,
  //     secondary: secondaryMain,
  //     secondaryVariant: secondaryMain,
  //     surface: Colors.white,
  //   ),
  // );

  ThemeData get themeData => base.copyWith(
        accentColor: primaryMain,
        primaryColor: primaryMain,
        buttonColor: primaryMain,
        // buttonTheme: _buildMPowerButtonTheme(base.buttonTheme),
        // primaryTextTheme: _buildMPowerTextTheme(base.primaryTextTheme),
        // textTheme: _buildMPowerTextTheme(base.textTheme),
        // accentTextTheme: _buildMPowerTextTheme(base.accentTextTheme),
        // primaryColor: primaryMain,
        // primaryColorLight: primaryMain,
        // primaryColorDark: primary200,
        // accentColor: secondaryMain,
        // primaryIconTheme: base.iconTheme.copyWith(color: Colors.black54),
        // // accentIconTheme: base.iconTheme.copyWith(color: Colors.black54),
        // textSelectionColor: secondaryMain,
        // backgroundColor: background,
        // chipTheme: _buildMPowerChipTheme(),
        // floatingActionButtonTheme: _buildFABTheme(),
      );

  ChipThemeData _buildMPowerChipTheme() {
    return ChipThemeData(
        backgroundColor: Colors.white,
        disabledColor: Colors.white,
        selectedColor: Colors.white,
        secondarySelectedColor: Colors.white,
        labelPadding: const EdgeInsets.all(0.0),
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: const BorderSide(color: Colors.black12)),
        labelStyle: const TextStyle(
            fontFamily: 'LibreFranklin',
            fontWeight: FontWeight.w400,
            fontSize: 13.96,
            letterSpacing: 0.25,
            color: Colors.black87),
        secondaryLabelStyle: const TextStyle(
            fontFamily: 'LibreFranklin',
            fontWeight: FontWeight.w400,
            fontSize: 13.96,
            letterSpacing: 0.25,
            color: Colors.black87),
        brightness: Brightness.light);
  }

  TextTheme _buildMPowerTextTheme(TextTheme base) {
    return base.copyWith(
      headline4: base.headline4.copyWith(
        fontFamily: 'GoogleSans',
        fontWeight: FontWeight.w700,
        fontSize: 99.45,
        letterSpacing: -1.5,
      ),
      headline3: base.headline3.copyWith(
        fontFamily: 'GoogleSans',
        fontWeight: FontWeight.w700,
        fontSize: 62.12,
        letterSpacing: -0.5,
      ),
      headline2: base.headline2.copyWith(
        fontFamily: 'LibreFranklin',
        fontWeight: FontWeight.w500,
        fontSize: 47.85,
        letterSpacing: 0,
      ),
      headline1: base.headline1.copyWith(
          fontFamily: 'GoogleSans',
          fontWeight: FontWeight.w700,
          fontSize: 35.22,
          letterSpacing: 0.25,
          color: black60),
      headline5: base.headline5.copyWith(
        fontFamily: 'LibreFranklin',
        fontWeight: FontWeight.w500,
        fontSize: 23.92,
        letterSpacing: 0,
      ),
      headline6: base.headline6.copyWith(
          fontFamily: 'LibreFranklin',
          fontWeight: FontWeight.w500,
          fontSize: 17.94,
          letterSpacing: 0.15,
          color: Colors.black87),
      bodyText2: base.bodyText2.copyWith(
          fontFamily: 'GoogleSans',
          fontWeight: FontWeight.w400,
          fontSize: 15.95,
          letterSpacing: 0.5,
          color: Colors.black87),
      bodyText1: base.bodyText1.copyWith(
          fontFamily: 'LibreFranklin',
          fontWeight: FontWeight.w400,
          fontSize: 13.96,
          letterSpacing: 0.25,
          color: black60),
      button: base.button.copyWith(
        fontFamily: 'LibreFranklin',
        fontWeight: FontWeight.w800,
        fontSize: 13.96,
        letterSpacing: 1.25,
        color: Colors.black87,
      ),
      caption: base.caption.copyWith(
          fontFamily: 'GoogleSans',
          fontWeight: FontWeight.w400,
          fontSize: 12.43,
          letterSpacing: 0.4,
          color: black60),
      overline: base.overline.copyWith(
          fontFamily: 'LibreFranklin',
          fontWeight: FontWeight.w700,
          fontSize: 11.96,
          letterSpacing: 2,
          color: black60),
      subtitle1: base.subtitle1.copyWith(
          fontFamily: 'LibreFranklin',
          fontWeight: FontWeight.w600,
          fontSize: 15.95,
          letterSpacing: 0.15,
          color: Colors.black87),
      subtitle2: base.subtitle2.copyWith(
          fontFamily: 'GoogleSans',
          fontWeight: FontWeight.w400,
          fontSize: 14.5,
          letterSpacing: 0.1,
          color: black60),
    );
  }

  ButtonThemeData _buildMPowerButtonTheme(ButtonThemeData base) {
    final ButtonThemeData buttonTheme = base.copyWith(
      colorScheme: const ColorScheme(
        background: background,
        brightness: Brightness.light,
        error: errorColor,
        onBackground: Colors.black87,
        onError: Colors.white,
        onSurface: Colors.black87,
        onSecondary: Colors.black87,
        onPrimary: Colors.black,
        primary: secondary700,
        primaryVariant: secondary700,
        secondary: Colors.black,
        secondaryVariant: Colors.black,
        surface: Colors.white,
      ),
      buttonColor: secondaryMain,
      disabledColor: disabledColor,
      textTheme: ButtonTextTheme.accent,
    );

    return buttonTheme;
  }

  FloatingActionButtonThemeData _buildFABTheme() {
    return const FloatingActionButtonThemeData(
      backgroundColor: secondaryMain,
      splashColor: secondary700,
    );
  }
}
