import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/features/categories/atoms/categories_atom.dart';
import 'package:flutter_grocery_list/features/categories/widgets/category_cell.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesList extends ConsumerWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesAtomProvider);
    return Wrap(
      spacing: 6,
      runSpacing: 6,
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      children: categories
          .map(
            (category) => CategoryCell(
              category: category,
            ),
          )
          .toList(),
    );
  }
}
