import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/theme/instances/app_colors.dart';
import 'package:flutter_grocery_list/core/theme/instances/app_theme.dart';

extension ThemeContextExtension on BuildContext {
  ({ColorScheme colors, TextTheme texts, AppCustomColors customColors})
      get theme => AppTheme.of(this);
}
