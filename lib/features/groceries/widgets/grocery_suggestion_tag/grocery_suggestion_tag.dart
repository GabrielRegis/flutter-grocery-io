import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/design_system/utils/shadow.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_border_card.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';
import 'package:flutter_grocery_list/features/groceries/models/grocery_item.dart';
import 'package:flutter_grocery_list/features/groceries/widgets/grocery_suggestion_tag/grocery_suggestion_tag_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GrocerySuggestionTag extends ConsumerWidget {
  final GroceryItem item;
  const GrocerySuggestionTag({super.key, required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (
      colors: colors,
      texts: texts,
      customColors: _,
    ) = context.theme;

    final controller =
        ref.read(grocerySuggestionTagControllerProvider.call(item).notifier);

    return AppBorderCard(
      radius: 8,
      elevation: 0,
      color: colors.background,
      shadow: const [
        AppBoxShadow.evenLessBlured(),
      ],
      gradient: LinearGradient(
        colors: [
          colors.secondary,
          colors.secondary.withOpacity(.6),
        ],
      ),
      onLongPress: controller.onLongPress,
      onTap: controller.onTap,
      child: Padding(
        padding: const Insets.cell(18),
        child: Text(
          item.name,
          style: texts.labelLarge?.copyWith(
            color: colors.onSurface,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
