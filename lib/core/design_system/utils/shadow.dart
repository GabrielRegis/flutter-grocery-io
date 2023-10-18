import 'package:flutter/material.dart';

class AppBoxShadow extends BoxShadow {
  const AppBoxShadow.blurred({
    Color color = const Color(0x1f000000),
  }) : super(
          color: color,
          blurRadius: 10,
          offset: const Offset(0, 10),
        );
  const AppBoxShadow.lessBlured({
    Color color = const Color(0x1f000000),
  }) : super(
          color: color,
          blurRadius: 10,
          offset: const Offset(0, 5),
        );
  const AppBoxShadow.evenLessBlured({
    Color color = const Color(0x1f000000),
  }) : super(
          color: color,
          blurRadius: 5,
          offset: const Offset(0, 2),
        );
}
