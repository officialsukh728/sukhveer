import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) =>ThemeData(

    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    textTheme: Theme.of(context).textTheme.copyWith(
    //  titleLarge: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black),
     // titleMedium: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black),
      //titleSmall: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.black),
    ),
    fontFamily: GoogleFonts.lato().fontFamily,
    primarySwatch: Colors.deepPurple,
    primaryTextTheme: GoogleFonts.latoTextTheme(),
  );  static ThemeData darkTheme(BuildContext context) =>ThemeData(
  brightness: Brightness.dark,);

}