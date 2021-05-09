import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NulisStyles {
  static InputDecoration inputDecorationStyle = InputDecoration(
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      borderSide: BorderSide.none,
    ),
  );

  static TextStyle kTitleTextStyle = GoogleFonts.nunitoSans(
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kBodyTextStyle = GoogleFonts.nunitoSans(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );

  static TextStyle kBodyLightTextStyle = GoogleFonts.nunitoSans(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );
}
