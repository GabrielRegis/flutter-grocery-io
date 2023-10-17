import 'package:flutter/widgets.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/design_system/utils/safe_area.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_label_button.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_price_input.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/padding_column.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/price_tag_label.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';
import 'package:flutter_grocery_list/features/groceries/models/grocery_item.dart';
import 'package:flutter_grocery_list/features/groceries/widgets/update_grocery_modal/update_grocery_modal_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdateGroceryModal extends ConsumerWidget {
  final GroceryItem item;
  const UpdateGroceryModal({super.key, required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(
        updateGroceryModalControllerProvider.call(item, context).notifier);
    final (
      colors: _,
      texts: texts,
      customColors: _,
    ) = context.theme;

    return Padding(
      padding: context.safeBottomPadding,
      child: PaddingColumn(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        padding: const Insets.all(16),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.name,
                style: texts.titleSmall,
              ),
              PriceTagLabel(
                price: item.price,
              )
            ],
          ),
          Padding(
            padding: const Insets.vertical(8),
            child: AppPriceInput(
              controller: controller.textEditingController,
            ),
          ),
          AppLabelButton(
            onTap: controller.onSavePressed,
            label: 'Save',
          )
        ],
      ),
    );
  }
}
