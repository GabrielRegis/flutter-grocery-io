import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/navigation/instances/router.dart';
import 'package:flutter_grocery_list/core/providers/utils/app_context.dart';
import 'package:flutter_grocery_list/core/theme/atoms/current_theme_atom.dart';
import 'package:flutter_grocery_list/core/theme/instances/app_texts.dart';
import 'package:flutter_grocery_list/core/theme/instances/dark_theme_colors.dart';
import 'package:flutter_grocery_list/core/theme/instances/light_theme_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeAtomProvider);
    final router = ref.read(goRouterProviderProvider);
    AppContext.ref = ref;

    return MaterialApp.router(
      routerConfig: router,
      title: 'Grocery.io',
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
        textTheme: AppTexts.texts,
        extensions: const [lightCustomColors],
      ),
      themeMode: theme,
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
        textTheme: AppTexts.texts,
        extensions: const [darkCustomColors],
      ),
    );
  }
}
