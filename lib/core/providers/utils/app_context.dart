import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppContext {
  static WidgetRef? ref;
  static BuildContext? context;

  static bool get hasContext => context != null;
}
