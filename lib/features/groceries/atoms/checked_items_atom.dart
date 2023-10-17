import 'package:flutter_grocery_list/core/local_storage/utils/savable.dart';
import 'package:flutter_grocery_list/core/providers/utils/provider_store.dart';
import 'package:flutter_grocery_list/core/providers/utils/set_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checked_items_atom.g.dart';

@riverpod
class CheckedItemsAtom extends _$CheckedItemsAtom
    with SavableStringSetProvider, SetProvider {
  @override
  void clear() {
    state = {};
  }

  @override
  String get key => "checked_items";
}

class CheckedItemsStore extends Store<CheckedItemsAtom, Set<String>> {
  CheckedItemsStore(dynamic ref) : super(ref, checkedItemsAtomProvider);
}
