import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/padding_row.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';
import 'package:flutter_grocery_list/features/categories/models/category.dart';

class CategoryCell extends StatelessWidget {
  final Category category;
  const CategoryCell({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final (
      colors: colors,
      texts: texts,
      customColors: _,
    ) = context.theme;

    return Container(
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: PaddingRow(
        padding: const Insets.all(12),
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            category.name,
            style: texts.titleSmall?.copyWith(
              color: colors.onSurface,
            ),
          )
        ],
      ),
    );
  }
}
