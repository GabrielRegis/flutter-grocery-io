import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_icon_button.dart';
import 'package:flutter_grocery_list/core/theme/atoms/current_theme_atom.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeButton extends ConsumerWidget {
  const ThemeButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeController = ref.read(currentThemeAtomProvider.notifier);
    final theme = ref.watch(currentThemeAtomProvider);
    return AppIconButton(
      icon: theme == ThemeMode.dark ? Icons.sunny : Icons.nightlight_rounded,
      onTap: themeController.toggleTheme,
      size: 20,
    );
  }
}
