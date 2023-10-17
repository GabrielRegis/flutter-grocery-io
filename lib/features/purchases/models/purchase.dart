import 'package:flutter_grocery_list/features/groceries/models/grocery_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase.freezed.dart';
part 'purchase.g.dart';

@freezed
class Purchase with _$Purchase {
  factory Purchase(
      {required DateTime date,
      required List<GroceryItem> items,
      double? grantTotal}) = _Purchase;

  factory Purchase.fromJson(Map<String, dynamic> json) =>
      _$PurchaseFromJson(json);

  double get itemsTotal => items.fold(
        0,
        (previousValue, element) => element.totalPrice(),
      );

  double get total => grantTotal ?? itemsTotal;

  double get descount => itemsTotal - total;

  String get id => date.toIso8601String();

  Purchase._();
}
