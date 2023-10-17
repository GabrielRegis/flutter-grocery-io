import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';

extension SafeAreaExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  EdgeInsetsGeometry get safeBottomPadding =>
      Insets.bot(mediaQuery.viewInsets.bottom + mediaQuery.padding.bottom);

  bool get isKeyboardOpen => mediaQuery.viewInsets.bottom == 0;
}
