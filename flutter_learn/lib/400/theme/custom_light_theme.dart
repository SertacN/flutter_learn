import 'package:flutter/material.dart';
import 'package:flutter_learn/400/theme/custom_color_schema.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLightTheme {
  final ThemeData themeData = ThemeData(
    fontFamily: GoogleFonts.roboto().fontFamily,
    useMaterial3: true,
    colorScheme: CustomColorSchema.lightColorScheme,
  );
}
