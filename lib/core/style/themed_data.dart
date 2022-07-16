import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/core/style/core_dimensions.dart';

class ThemedData {
  static ThemeData lightThemeData = ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(CoreDimensions.paddingS),
      ),
    ),
    backgroundColor: ColorTokens.white,
    primaryColor: ColorTokens.brandPrimaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorTokens.brandPrimaryColor,
      iconTheme: IconThemeData(color: ColorTokens.brandPrimaryColorDarker),
    ),
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );
}
