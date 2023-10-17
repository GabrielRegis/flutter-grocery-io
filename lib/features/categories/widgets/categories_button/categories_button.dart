import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_icon_button.dart';
import 'package:flutter_grocery_list/features/categories/widgets/categories_button/categories_button_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesButton extends ConsumerWidget {
  const CategoriesButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        ref.read(categoriesButtonControllerProvider.call(context).notifier);
    return AppIconButton(
      icon: Icons.category,
      size: 25,
      onTap: controller.onTap,
    );
  }
}
