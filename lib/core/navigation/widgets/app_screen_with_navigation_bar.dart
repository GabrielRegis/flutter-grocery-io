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
      colors: _,
      texts: _,
      customColors: _,
    ) = context.theme;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomBar(
        navigationShell: navigationShell,
      ),
      body: navigationShell,
    );
  }
}
