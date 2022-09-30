// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyTheme {
 static  ThemeData lighttheme(BuildContext context) => ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: GoogleFonts.acme().fontFamily,
            appBarTheme: AppBarTheme(
              color: Colors.white,
              foregroundColor: Colors.black,
              elevation: 0.0,
              iconTheme: IconThemeData(color: Colors.black),
            ));

            static  ThemeData darktheme(BuildContext context) => ThemeData(
              brightness: Brightness.dark
            );
}