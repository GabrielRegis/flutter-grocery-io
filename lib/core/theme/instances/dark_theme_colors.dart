import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/theme/instances/app_colors.dart';

const darkCustomColors = AppCustomColors(
  successColor: Color.fromARGB(255, 96, 232, 182),
  onSuccessColor: Color.fromARGB(255, 16, 61, 53),
  glassGradient: LinearGradient(
    colors: [
      Color(0x99FFFFFF),
      Color(0x1AFFFFFF),
      Color(0x1AF0FFFF),
      Color(0x99F0FFFF)
    ],
    begin: Alignment(0.2, 0.0),
    end: Alignment(1.0, 1.0),
    transform: GradientRotation(2),
    stops: [0.0, 0.39, 0.40, 1.0],
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

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color.fromARGB(255, 44, 187, 239),
  onPrimary: Color.fromARGB(255, 23, 42, 77),
  primaryContainer: Color(0xFF004F57),
  onPrimaryContainer: Color(0xFF92F1FF),
  secondary: Color.fromARGB(255, 36, 243, 143),
  onSecondary: Color.fromARGB(255, 5, 17, 5),
  secondaryContainer: Color(0xFF14448F),
  onSecondaryContainer: Color(0xFFD8E2FF),
  tertiary: Color(0xFFB9C6EA),
  onTertiary: Color(0xFF23304D),
  tertiaryContainer: Color(0xFF3A4664),
  onTertiaryContainer: Color(0xFFD9E2FF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color.fromARGB(255, 147, 0, 59),
  onError: Color(0xFF690005),
  onErrorContainer: Color.fromARGB(255, 255, 186, 194),
  background: Color.fromARGB(255, 2, 15, 19),
  onBackground: Color(0xFFBFE9FF),
  surface: Color.fromARGB(255, 4, 26, 43),
  onSurface: Color(0xFFBFE9FF),
  surfaceVariant: Color(0xFF3F484A),
  onSurfaceVariant: Color(0xFFBFC8CA),
  outline: Color(0xFF899294),
  onInverseSurface: Color(0xFF001F2A),
  inverseSurface: Color(0xFFBFE9FF),
  inversePrimary: Color(0xFF006973),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF4ED8E9),
  outlineVariant: Color(0xFF3F484A),
  scrim: Color(0xFF000000),
);
