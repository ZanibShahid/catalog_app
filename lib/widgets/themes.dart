// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darktheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluish = Color(0xff403b58);
}
