import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme() {
  return ThemeData(
    primarySwatch: createMaterialColor(Color(0xFFd52b1e)),
    primaryColor: Color(0xFFd52b1e),
    accentColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: GoogleFonts.nunitoTextTheme().copyWith(
      headline1: GoogleFonts.nunito(fontSize: 36, color: Color(0xFFd52b1e)),
      headline2: GoogleFonts.nunito(fontSize: 36, color: Colors.white),
      headline3: GoogleFonts.nunito(fontSize: 20, color: Color(0xFFd52b1e)),
      headline4: GoogleFonts.nunito(fontSize: 20, color: Colors.white),
      bodyText1: GoogleFonts.nunito(fontSize: 12, color: Color(0xFFd52b1e)),
      bodyText2: GoogleFonts.nunito(fontSize: 12, color: Colors.white),
      button: GoogleFonts.nunito(
          fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFFd52b1e)),
    ),
  );
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}
