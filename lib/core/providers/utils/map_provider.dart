import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin MapProvider<T> on AutoDisposeNotifier<Map<String, T>> {
  String getItemKey(T item);

  void updateItem(T item, {bool shouldUpdateMap = true}) {
    state.update(getItemKey(item), (value) => item);
    if (shouldUpdateMap) {
      updateMap();
    }
  }

  void toggleItem(T item) {
    if (state.containsKey(getItemKey(item))) {
      removeItem(item);
    } else {
      addItem(item);
    }
  }

  void addItem(T item) {
    if (!state.containsKey(getItemKey(item))) {
      state.putIfAbsent(getItemKey(item), () => item);
      updateMap();
    }
  }

  void removeItem(T item) {
    state.remove(getItemKey(item));
    updateMap();
  }

  void updateMap() {
    state = Map.from(state);
  }
}
