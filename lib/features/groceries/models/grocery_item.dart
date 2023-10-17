import 'package:freezed_annotation/freezed_annotation.dart';

part 'grocery_item.freezed.dart';
part 'grocery_item.g.dart';

@freezed
class GroceryItem with _$GroceryItem {
  factory GroceryItem(
      {required String name,
      @Default(0) int count,
      @Default(1.99) double price}) = _GroceryItem;

  const GroceryItem._();

  factory GroceryItem.fromJson(Map<String, dynamic> json) =>
      _$GroceryItemFromJson(json);

  double totalPrice() {
    return count * price;
  }

  static Map<String, GroceryItem> get essentials => {
        "🍌 Cacho de banana": GroceryItem(
          name: '🍌 Cacho de banana',
          price: 2.99,
          count: 1,
        ),
        "🧋 Tapioca 1kg": GroceryItem(
          name: '🧋 Tapioca 1kg',
          price: 9.50,
          count: 1,
        ),
        "🥣 Aveia 1kg": GroceryItem(
          name: '🥣 Aveia 1kg',
          price: 9.90,
          count: 1,
        ),
        "🧻 Papel higiênico": GroceryItem(
          name: '🧻 Papel higiênico',
          price: 25.90,
          count: 1,
        ),
        "🥚 Bandeja de ovo 30u": GroceryItem(
          name: '🥚 Bandeja de ovo 30u',
          price: 13.40,
          count: 1,
        ),
      };
}
