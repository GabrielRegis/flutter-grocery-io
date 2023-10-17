import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/theme/instances/app_colors.dart';
import 'package:flutter_grocery_list/core/theme/instances/app_texts.dart';

class AppTheme {
  final TextTheme texts;
  final AppColors colors;
  const AppTheme(this.texts, this.colors);

  static ({ColorScheme colors, TextTheme texts, AppCustomColors customColors})
      of(BuildContext context) {
    final texts = AppTexts.of(context);
    final colors = AppColors.of(context);
    final customColors = colors.customColors;
    return (colors: colors.colors, texts: texts, customColors: customColors);
  }

  ColorScheme get scheme => colors.colors;
  TextTheme get styles => texts;
}
