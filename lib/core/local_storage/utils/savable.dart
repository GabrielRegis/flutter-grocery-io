import 'dart:convert';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_debouncer/flutter_debouncer.dart';
import 'package:flutter_grocery_list/core/local_storage/instances/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin SavableProvider<T> on AutoDisposeNotifier<T?> {
  @override
  T? build() {
    final storedItem = load();
    return storedItem;
  }

  void clear() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    sharedPreferences.remove(key);
  }

  void save() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    final objectAsString = toString();
    sharedPreferences.setString(key, objectAsString);
  }

  T? load() {
    ref.listenSelf((previous, next) {
      save();
    });
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    final storedObjectAsString = sharedPreferences.getString(key);
    if (storedObjectAsString != null && storedObjectAsString.isNotEmpty) {
      final storedObject = fromJsonString(storedObjectAsString);
      return storedObject;
    }
    return null;
  }

  String get key;

  T fromJsonString(String jsonString);
}

mixin SavableListProvider<T> on AutoDisposeNotifier<List<T>> {
  @override
  List<T> build() {
    final storedItems = load();
    return storedItems;
  }

  void clear() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    sharedPreferences.remove(key);
  }

  void save() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    final objectAsStringList = toJsonStringList(state);
    sharedPreferences.setStringList(key, objectAsStringList);
  }

  List<T> load() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);

    ref.listenSelf((previous, next) {
      save();
    });

    final storedObjectAsString = sharedPreferences.getStringList(key);
    if (storedObjectAsString != null && storedObjectAsString.isNotEmpty) {
      final storedItems =
          storedObjectAsString.map((e) => fromJson(jsonDecode(e)));
      return storedItems.toList();
    }

    return [];
  }

  String get key;

  List<String> toJsonStringList(List<T> list) {
    return list.map((e) => jsonEncode(e)).toList();
  }

  T fromJson(Map<String, dynamic> object);
}

mixin SavableMapProvider<T> on AutoDisposeNotifier<Map<String, T>> {
  final Debouncer debouncer = Debouncer();

  @override
  Map<String, T> build() {
    final storedItems = load();
    return storedItems;
  }

  void clear() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    sharedPreferences.remove(key);
  }

  void onSaved() {}

  void save() {
    debouncer.debounce(1000.ms, () {
      final sharedPreferences = ref.read(sharedPreferencesProvider);
      final objectAsStringList = toJsonStringList(state);
      sharedPreferences.setStringList(key, objectAsStringList);
      onSaved();
    });
  }

  Map<String, T> load() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);

    ref.listenSelf((previous, next) {
      save();
    });

    final storedObjectAsString = sharedPreferences.getStringList(key);
    if (storedObjectAsString != null && storedObjectAsString.isNotEmpty) {
      final storedItems =
          storedObjectAsString.map((e) => fromJson(jsonDecode(e)));
      final map = {for (var e in storedItems) getItemKey(e): e};
      return map;
    }

    return {};
  }

  String getItemKey(T item);

  String get key;

  List<String> toJsonStringList(Map<String, T> map) {
    return map.values.map((e) => jsonEncode(e)).toList();
  }

  T fromJson(Map<String, dynamic> object);
}

mixin SavableStringSetProvider on AutoDisposeNotifier<Set<String>> {
  final Debouncer debouncer = Debouncer();

  @override
  Set<String> build() {
    final storedItems = load();
    return storedItems;
  }

  void clear() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    sharedPreferences.remove(key);
  }

  void onSaved() {}

  void save() {
    debouncer.debounce(1000.ms, () {
      final sharedPreferences = ref.read(sharedPreferencesProvider);
      final objectAsStringList = toJsonStringList(state);
      sharedPreferences.setStringList(key, objectAsStringList);
      onSaved();
    });
  }

  Set<String> load() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    ref.listenSelf((previous, next) {
      save();
    });

    final storedObjectAsString = sharedPreferences.getStringList(key);
    if (storedObjectAsString != null && storedObjectAsString.isNotEmpty) {
      return Set.from(storedObjectAsString);
    }

    return {};
  }

  String get key;

  List<String> toJsonStringList(Set<String> map) {
    return map.map((e) => e).toList();
  }
}
