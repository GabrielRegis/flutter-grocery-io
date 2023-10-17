import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/local_storage/utils/savable.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_theme_atom.g.dart';

@riverpod
class CurrentThemeAtom extends _$CurrentThemeAtom with SavableProvider {
  @override
  ThemeMode? build() {
    final theme = super.build();
    return theme ?? ThemeMode.dark;
  }

  void toggleTheme() {
    state = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }

  @override
  String toString() {
    return state == ThemeMode.dark ? 'dark' : 'light';
  }

  @override
  ThemeMode fromJsonString(String jsonString) {
    return jsonString == 'dark' ? ThemeMode.dark : ThemeMode.light;
  }

  @override
  String get key => "current_theme";
}
