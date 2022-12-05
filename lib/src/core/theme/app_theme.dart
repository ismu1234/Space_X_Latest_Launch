import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get theme {
    return _theme.copyWith(
      textTheme: GoogleFonts.interTextTheme(_theme.textTheme),
    );
  }

  static ThemeData get _theme => ThemeData(
        brightness: Brightness.light,
        ////ButtonColors

        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          elevation: 1,
          centerTitle: true,
        ),
        checkboxTheme: const CheckboxThemeData().copyWith(
          side: BorderSide(
            color: ColorTones.trueBlue,
            width: 2,
          ),
          shape: const CircleBorder(),
        ),
        textTheme: TextTheme(
          bodyText1: const TextStyle(
            fontSize: 16,
            backgroundColor: Colors.amber,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),

          //TEXT
          bodyText2: const TextStyle(
            color: Colors.white,
          ),

          //BUTTON
          button: TextStyle(
            color: ColorTones.snowWhite,
            fontSize: 16,
            letterSpacing: -0.3,
            fontWeight: FontWeight.bold,
          ),

          //BUTTON
          // buttonwhite: TextStyle(
          //   color: ColorTones.graniteGrey,
          //   fontFamily: AppConstant.FONT_FAMILY,
          //   fontSize: 16,
          //   letterSpacing: -0.3,
          // ),

          //ListTile title
          subtitle1: TextStyle(
            color: ColorTones.trueBlue,
            fontSize: 18,
          ),
        ),

        inputDecorationTheme: _inputDecorationTheme(),
        elevatedButtonTheme: _elevatedButtonTheme(),
        outlinedButtonTheme: _outlinedButtonTheme(),
      );

  static ElevatedButtonThemeData _elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        alignment: Alignment.center,
        primary: ColorTones.trueBlue,
        splashFactory: NoSplash.splashFactory,
        shadowColor: Colors.transparent,
        side: BorderSide(
          color: ColorTones.trueBlue,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  static OutlinedButtonThemeData _outlinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // kucuk notlar bıraksam
        ),
      ),
    );
  }

  static InputDecorationTheme _inputDecorationTheme() {
    return const InputDecorationTheme().copyWith(
      focusColor: ColorTones.trueBlue,
      fillColor: Colors.transparent,
      errorMaxLines: 2,
      labelStyle: TextStyle(color: ColorTones.graniteGrey),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: ColorTones.trueBlue),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: ColorTones.lavaRed),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: ColorTones.trueBlue),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: ColorTones.lavaRed),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: ColorTones.trueBlue),
      ),
    );
  }
}
