import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_card.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/radio_check.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/checked_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/widgets/grocery_item_cell/grocery_item_cell_controller.dart';
import 'package:flutter_grocery_list/features/groceries/widgets/grocery_item_counter/grocery_item_counter.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GroceryItemCell extends ConsumerWidget {
  final String itemName;
  const GroceryItemCell({super.key, required this.itemName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (
      colors: colors,
      texts: texts,
      :customColors,
    ) = context.theme;

    final controller = ref.read(
        groceryItemCellControllerProvider.call(itemName, context).notifier);

    final isChecked = CheckedItemsStore(ref)
        .select<bool>((value) => value.contains(itemName));

    final cellColor =
        isChecked ? colors.primary.withOpacity(.9) : colors.background;

    final textColor = isChecked ? colors.onPrimary : colors.onSurface;

    return AppCard(
      key: Key('${itemName}_card'),
      onLongPress: controller.onEditCellPressed,
      onTap: controller.toggleItem,
      color: cellColor,
      radius: 0,
      child: Slidable(
        key: ValueKey(itemName),
        startActionPane: ActionPane(
          motion: const DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: (c) => controller.onDismissed(),
              backgroundColor: colors.errorContainer,
              icon: Icons.delete,
            ),
            SlidableAction(
              onPressed: (c) => controller.onEditCellPressed(),
              backgroundColor: customColors.successColor,
              icon: Icons.edit,
            ),
          ],
        ),
        child: Padding(
          padding: const Insets.all(
            32,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Padding(
                      padding: const Insets.right(8),
                      child: RadioCheck(
                        key: Key("${itemName}check"),
                        isChecked: isChecked,
                        color: textColor,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        itemName,
                        style: texts.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: textColor,
                          decorationColor: textColor,
                          decorationStyle: TextDecorationStyle.dashed,
                          decoration: isChecked
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const Insets.left(8),
                child: RepaintBoundary(
                  child: GroceryItemCounter(
                    itemName: itemName,
                    textColor: textColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
