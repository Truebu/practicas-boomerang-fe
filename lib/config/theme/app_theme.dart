import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const colorSeed = Color(0xFFFBBA37);
const primaryColor = Color(0xFF1E75FA);
const scaffoldBackgroundColor = Color(0xFFF8F7F7);

class AppTheme {

  ThemeData getTheme() => ThemeData(
    ///* General
    useMaterial3: true,
    colorSchemeSeed: colorSeed,
    // primaryColor: primaryColor,
    // focusColor: primaryColor,

    ///* Texts
    textTheme: TextTheme(
      titleLarge: GoogleFonts.roboto()
        .copyWith( fontSize: 40, fontWeight: FontWeight.bold ),
      titleMedium: GoogleFonts.roboto()
        .copyWith( fontSize: 30, fontWeight: FontWeight.bold ),
      titleSmall: GoogleFonts.roboto()
        .copyWith( fontSize: 20 )
    ),

    ///* Scaffold Background Color
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    

    ///* Buttons
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStatePropertyAll(
          GoogleFonts.roboto()
            .copyWith(fontWeight: FontWeight.w700)
          )
      )
    ),

    ///* AppBar
    appBarTheme: AppBarTheme(
      color: scaffoldBackgroundColor,
      titleTextStyle: GoogleFonts.roboto()
        .copyWith( fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black ),
    )
  );

}