import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_grocery_list/core/local_storage/instances/shared_preferences.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/checked_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/models/grocery_item.dart';
import 'package:flutter_grocery_list/features/groceries/widgets/grocery_item_cell/grocery_item_cell.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/provider_container_utils.dart';

void main() {
  testWidgets('MyWidget has a title and message', (tester) async {
    SharedPreferences.setMockInitialValues({
      'groceries': {
        'Water': GroceryItem(name: "Water"),
      }.values.map((e) => jsonEncode(e)).toList()
    });
    final prefs = await SharedPreferences.getInstance();

    final container = ProviderUtils.createContainer(overrides: [
      sharedPreferencesProvider.overrideWithValue(prefs),
    ]);

    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(
      ProviderScope(
        parent: container,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Material(
            child: Ink(
              child: const GroceryItemCell(
                itemName: 'Water',
              ),
            ),
          ),
        ),
      ),
    );

    final button = find.byKey(const Key("Water_card"));
    expect(button, findsOneWidget);

    await tester.tap(button);
    await tester.pump(1000.ms);
    var checkedItem = CheckedItemsStore(container).items.contains('Water');
    expect(checkedItem, true);

    await tester.tap(button);
    await tester.pump(1000.ms);
    checkedItem = CheckedItemsStore(container).items.contains('Water');
    expect(checkedItem, false);
  });
}
