import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/padding_row.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';
import 'package:flutter_grocery_list/features/groceries/widgets/grocery_item_input/grocery_item_input_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroceryItemInput extends ConsumerWidget {
  const GroceryItemInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (
      :colors,
      texts: _,
      customColors: _,
    ) = context.theme;
    final controller = ref.read(groceryItemInputControllerProvider.notifier);

    return Container(
      decoration: BoxDecoration(
        color: colors.surface.withOpacity(.8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: PaddingRow(
        padding: const Insets.horizontal(16),
        children: [
          const Icon(Icons.search),
          Expanded(
            child: TextField(
              onSubmitted: controller.onSubmit,
              onChanged: controller.onChanged,
              controller: controller.textEditingController,
              textCapitalization: TextCapitalization.sentences,
              textInputAction: TextInputAction.next,
              autocorrect: false,
              autofocus: false,
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: Insets.cell(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
