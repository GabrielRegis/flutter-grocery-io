import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/navigation/widgets/bottom_bar/bottom_bar.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';
import 'package:go_router/go_router.dart';

class AppScreenWithNavigationBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const AppScreenWithNavigationBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    final (
      colors: colors,
      texts: _,
      customColors: _,
    ) = context.theme;
    return Scaffold(
      extendBody: false,
      bottomNavigationBar: BottomBar(
        navigationShell: navigationShell,
      ),
      backgroundColor: colors.surface,
      body: navigationShell,
    );
  }
}
