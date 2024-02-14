
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class KTheme
{
  static ThemeData lightheme =ThemeData(
      brightness: Brightness.light,
      textTheme:TextTheme(
        headline2: GoogleFonts.marcellus(
          color: Colors.cyan
        )
      )
  );

  static ThemeData darkheme =ThemeData(
      brightness: Brightness.dark,
      textTheme:TextTheme(
        headline1: GoogleFonts.marcellus(
          color: Colors.cyan
        ),
        headline2: GoogleFonts.marcellus(
          color: Colors.red
        )
      )
  );


}