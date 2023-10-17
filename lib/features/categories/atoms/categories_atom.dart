import 'package:flutter_grocery_list/features/categories/models/category.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'categories_atom.g.dart';

@riverpod
class CategoriesAtom extends _$CategoriesAtom {
  @override
  List<Category> build() {
    return [
      Category(name: "🍑 Frutas"),
      Category(name: "🍆 Legumes"),
      Category(name: "🥬 Verduras"),
      Category(name: "👩🏽‍🏫 Juliana"),
      Category(name: "🍎 Natasha"),
    ];
  }

  void addCategory(Category category) {
    state = [...state, category];
  }
}
