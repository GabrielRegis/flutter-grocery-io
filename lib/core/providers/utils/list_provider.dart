import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin UniqueListProvider<T> on AutoDisposeNotifier<List<T>> {
  void updateItem(T oldItem, T newItem) {
    final index = state.indexOf(oldItem);
    if (index >= 0) {
      state[index] = newItem;
      state = [...state];
    }
  }

  void addItem(T item) {
    final index = state.indexOf(item);
    if (index < 0) {
      state = [...state, item];
    }
  }

  void removeItem(T item) {
    final index = state.indexOf(item);
    if (index >= 0) {
      state.removeAt(index);
      state = [...state];
    }
  }
}
