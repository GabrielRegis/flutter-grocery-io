import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/theme/instances/app_colors.dart';

const lightCustomColors = AppCustomColors(
  successColor: Color.fromARGB(255, 96, 232, 182),
  onSuccessColor: Color.fromARGB(255, 16, 61, 53),
  glassGradient: LinearGradient(
    colors: [
      Color.fromARGB(28, 116, 114, 114),
      Color.fromARGB(54, 179, 179, 179),
      Color.fromARGB(90, 240, 255, 255),
      Color.fromARGB(59, 24, 27, 27)
    ],
    begin: Alignment(0.2, 0.0),
    end: Alignment(1.0, 1.0),
    transform: GradientRotation(2),
    stops: [0.0, 0.20, 0.40, 1.0],
  ),
  successGradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 0, 255, 208),
      Color.fromARGB(153, 117, 255, 253),
      Color.fromARGB(255, 53, 225, 255),
      Color.fromARGB(153, 74, 255, 180)
    ],
    begin: Alignment(0.2, 0.0),
    end: Alignment(1.0, 1.0),
    transform: GradientRotation(2),
    stops: [0.0, 0.2, 0.40, 1.0],
  ),
);

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color.fromARGB(255, 47, 184, 243),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF92F1FF),
  onPrimaryContainer: Color(0xFF001F23),
  secondary: Color.fromARGB(255, 22, 169, 182),
  onSecondary: Color.fromARGB(255, 0, 41, 58),
  secondaryContainer: Color(0xFFD8E2FF),
  onSecondaryContainer: Color(0xFF001A43),
  tertiary: Color(0xFF525E7D),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFD9E2FF),
  onTertiaryContainer: Color(0xFF0D1B37),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFAFCFF),
  onBackground: Color(0xFF001F2A),
  surface: Color.fromARGB(255, 213, 230, 237),
  onSurface: Color(0xFF001F2A),
  surfaceVariant: Color(0xFFDBE4E6),
  onSurfaceVariant: Color(0xFF3F484A),
  outline: Color(0xFF6F797A),
  onInverseSurface: Color(0xFFE1F4FF),
  inverseSurface: Color(0xFF003547),
  inversePrimary: Color(0xFF4ED8E9),
  shadow: Color(0xFF000000),
  surfaceTint: Color.fromARGB(255, 220, 49, 143),
  outlineVariant: Color(0xFFBFC8CA),
  scrim: Color.fromARGB(255, 250, 255, 255),
);
