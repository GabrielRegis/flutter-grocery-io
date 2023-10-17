import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin SetProvider<T> on AutoDisposeNotifier<Set<T>> {
  void toggleItem(T item) {
    if (state.contains(item)) {
      removeItem(item);
    } else {
      addItem(item);
    }
  }

  void addItem(T item) {
    if (!state.contains(item)) {
      state.add(item);
      updateSet();
    }
  }

  void removeItem(T item) {
    state.remove(item);
    updateSet();
  }

  void updateSet() {
    state = Set.from(state);
  }
}
