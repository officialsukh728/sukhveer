import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColor: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        hintColor: darkBluishColor,
        bottomAppBarColor: darkBluishColor,
        dividerColor: darkBluishColor,
        disabledColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        textTheme: Theme.of(context).textTheme.copyWith(
              displayLarge: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(color: Colors.black),
              displayMedium: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(color: Colors.black),
              displaySmall: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: Colors.black),
              headlineMedium: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Colors.black),
              headlineSmall: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.black),
              titleLarge: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.black),
              titleMedium: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.black),
              titleSmall: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: Colors.black),
              bodyLarge: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.black),
              bodyMedium: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.black),
              bodySmall: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.black),
              labelLarge: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Colors.black),
              labelSmall: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: Colors.black),
            ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        hintColor: Colors.white,
        bottomAppBarColor: lightBluishColor,
        dividerColor: Colors.white,
        disabledColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        textTheme: Theme.of(context).textTheme.copyWith(
              displayLarge: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(color: Colors.white),
              displayMedium: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(color: Colors.white),
              displaySmall: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: Colors.white),
              headlineMedium: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Colors.white),
              headlineSmall: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.white),
              titleLarge: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.white),
              titleMedium: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.white),
              titleSmall: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: Colors.white),
              bodyLarge: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.white),
              bodyMedium: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.white),
              bodySmall: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.white),
              labelLarge: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Colors.white),
              labelSmall: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: Colors.white),
            ),
      );

  //color
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
