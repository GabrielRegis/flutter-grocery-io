import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/theme/instances/light_theme_colors.dart';

@immutable
class AppColors {
  final ThemeData themeData;

  const AppColors(this.themeData);

  static AppColors of(BuildContext context) {
    final theme = Theme.of(context);
    return AppColors(theme);
  }

  AppCustomColors get customColors =>
      themeData.extension<AppCustomColors>() ?? lightCustomColors;
  ColorScheme get colors => themeData.colorScheme;

  Color get primaryContainerColor => colors.primaryContainer;
  Color get secondaryColor => colors.secondary;
  Color get tertiaryColor => colors.tertiary;
  Color get surfaceVariantColor => colors.surfaceVariant;
  Color get surfaceSimpleElavationColor => ElevationOverlay.applySurfaceTint(
      colors.background, colors.surfaceTint, 1);
}

class AppCustomColors extends ThemeExtension<AppCustomColors> {
  final Color successColor;
  final Color onSuccessColor;
  final Gradient glassGradient;
  final Gradient successGradient;
  const AppCustomColors({
    required this.successColor,
    required this.onSuccessColor,
    required this.glassGradient,
    required this.successGradient,
  });

  @override
  AppCustomColors copyWith(
      {Color? successColor,
      Color? onSuccessColor,
      Gradient? glassGradient,
      Gradient? successGradient}) {
    return AppCustomColors(
      successColor: successColor ?? this.successColor,
      onSuccessColor: onSuccessColor ?? this.onSuccessColor,
      glassGradient: glassGradient ?? this.glassGradient,
      successGradient: successGradient ?? this.successGradient,
    );
  }

  @override
  AppCustomColors lerp(ThemeExtension<AppCustomColors>? other, double t) {
    if (other is! AppCustomColors) {
      return this;
    }
    return AppCustomColors(
      successColor:
          Color.lerp(successColor, other.successColor, t) ?? Colors.transparent,
      onSuccessColor: Color.lerp(onSuccessColor, other.onSuccessColor, t) ??
          Colors.transparent,
      glassGradient: glassGradient,
      successGradient: successGradient,
    );
  }
}

extension ColorSchemeExtension on ColorScheme {
  Gradient get glassGradient => const LinearGradient(
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
      );

  Gradient get successGradient => const LinearGradient(
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
      );
}
