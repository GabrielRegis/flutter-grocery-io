import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_grocery_list/core/design_system/utils/safe_area.dart';
import 'package:flutter_grocery_list/core/navigation/widgets/bottom_bar/bottom_bar_controller.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/checked_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/grocery_items_atom.dart';
import 'package:flutter_grocery_list/features/purchases/widgets/purchase_summary/purchase_summary.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BottomBar extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;

  const BottomBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (
      colors: colors,
      texts: texts,
      customColors: _,
    ) = context.theme;
    final groceciesAmount = GroceryItemsStore(ref).watchItems.length;
    final checkedItemsAmount = CheckedItemsStore(ref).watchItems.length;
    final shouldShowSummary = groceciesAmount == checkedItemsAmount &&
        context.isKeyboardOpen &&
        groceciesAmount > 0;

    final controller =
        ref.read(bottomBarControllerProvider.call(navigationShell).notifier);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        RepaintBoundary(
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'List',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded),
                label: 'Purchases',
              ),
            ],
            unselectedLabelStyle: texts.labelSmall,
            selectedLabelStyle:
                texts.labelSmall?.copyWith(fontWeight: FontWeight.w800),
            currentIndex: navigationShell.currentIndex,
            selectedItemColor: colors.primary,
            onTap: controller.navigate,
          ),
        ),
        AnimatedPositioned(
          duration: 300.ms,
          curve: Curves.easeInOut,
          bottom: shouldShowSummary ? 0 : -200,
          width: context.mediaQuery.size.width,
          child: const RepaintBoundary(
            child: CartSummary(),
          ),
        )
      ],
    );
  }
}
