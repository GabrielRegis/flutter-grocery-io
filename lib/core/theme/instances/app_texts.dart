import 'package:flutter/material.dart';

class AppTexts extends TextTheme {
  const AppTexts();

  static TextTheme of(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return theme;
  }

  static TextTheme get texts {
    const titlesTextStyle = TextStyle(fontFamily: "GT");
    // final titlesTextStyle = GoogleFonts.gabriela();
    const ibmTextStyle = TextStyle(fontFamily: "IBM");
    // final ibmTextStyle = GoogleFonts.inter();

    return TextTheme(
      displayLarge: titlesTextStyle.copyWith(
          fontSize: 57, letterSpacing: 0, fontWeight: FontWeight.w400),
      displayMedium: titlesTextStyle.copyWith(
          fontSize: 45, letterSpacing: 0, fontWeight: FontWeight.w400),
      displaySmall: titlesTextStyle.copyWith(
          fontSize: 36, letterSpacing: 0, fontWeight: FontWeight.w400),
      headlineLarge: titlesTextStyle.copyWith(
          fontSize: 32, letterSpacing: 0, fontWeight: FontWeight.w400),
      headlineMedium: titlesTextStyle.copyWith(
          fontSize: 28, letterSpacing: 0, fontWeight: FontWeight.w400),
      headlineSmall: titlesTextStyle.copyWith(
          fontSize: 24, letterSpacing: 0, fontWeight: FontWeight.w400),
      titleLarge: titlesTextStyle.copyWith(
          fontSize: 22, letterSpacing: 0, fontWeight: FontWeight.w700),
      titleMedium: titlesTextStyle.copyWith(
          fontSize: 16, letterSpacing: 0.15, fontWeight: FontWeight.w700),
      titleSmall: titlesTextStyle.copyWith(
          fontSize: 14, letterSpacing: 0.1, fontWeight: FontWeight.w700),
      labelLarge: ibmTextStyle.copyWith(
          fontSize: 14, letterSpacing: 0.1, fontWeight: FontWeight.w500),
      labelMedium: ibmTextStyle.copyWith(
          fontSize: 12, letterSpacing: 0.5, fontWeight: FontWeight.w500),
      labelSmall: ibmTextStyle.copyWith(
          fontSize: 11, letterSpacing: 0.5, fontWeight: FontWeight.w500),
      bodySmall: ibmTextStyle.copyWith(
          fontSize: 12, letterSpacing: 0.4, fontWeight: FontWeight.w400),
      bodyMedium: ibmTextStyle.copyWith(
          fontSize: 14, letterSpacing: 0.25, fontWeight: FontWeight.w400),
      bodyLarge: ibmTextStyle.copyWith(
          fontSize: 16, letterSpacing: 0.25, fontWeight: FontWeight.w400),
    );
  }
}
