import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/design_system/utils/safe_area.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/padding_column.dart';
import 'package:flutter_grocery_list/features/categories/widgets/categories_list.dart';
import 'package:flutter_grocery_list/features/categories/widgets/category_text_input/category_text_input.dart';

class CategoriesModal extends StatelessWidget {
  const CategoriesModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.safeBottomPadding,
      child: const PaddingColumn(
        padding: Insets.all(12),
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(padding: Insets.bot(16), child: CategoryTextInput()),
          CategoriesList(),
        ],
      ),
    );
  }
}
