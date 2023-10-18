import 'package:flutter/cupertino.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_divider.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_screen.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';
import 'package:flutter_grocery_list/features/groceries/widgets/grocery_item_input/grocery_item_input.dart';
import 'package:flutter_grocery_list/features/groceries/widgets/grocery_items_suggestions.dart';
import 'package:flutter_grocery_list/features/groceries/widgets/grocery_list.dart';
import 'package:sliver_tools/sliver_tools.dart';

class GroceryItemsScreen extends StatelessWidget {
  const GroceryItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (
      colors: colors,
      texts: _,
      customColors: _,
    ) = context.theme;

    return AppScreen(
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: Insets.bot(16),
            child: GroceryItemsSuggestions(),
          ),
          AppDivider(),
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                ),
              ),
              child: GroceryList(),
            ),
          ),
        ],
      ),
      headerChildren: [
        SliverPinnedHeader(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  colors.scrim.withOpacity(1),
                  colors.scrim.withOpacity(0),
                ],
                stops: const [0.5, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: const Padding(
              padding: Insets.fromLTRB(16, 16, 16, 0),
              child: GroceryItemInput(),
            ),
          ),
        )
      ],
      navbarTitle: 'Grocer.io 🍊',
    );
  }
}
