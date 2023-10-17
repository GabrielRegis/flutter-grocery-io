import 'package:flutter/material.dart';

class Insets extends EdgeInsets {
  const Insets.all(double value) : super.all(value);

  const Insets.horizontal(double value) : super.symmetric(horizontal: value);
  const Insets.vertical(double value) : super.symmetric(vertical: value);
  const Insets.cell(double value)
      : super.symmetric(vertical: value / 2, horizontal: value);

  const Insets.top(double value) : super.only(top: value);
  const Insets.bot(double value) : super.only(bottom: value);
  const Insets.left(double value) : super.only(left: value);
  const Insets.right(double value) : super.only(right: value);

  const Insets.fromLTRB(double left, double top, double right, double bottom)
      : super.fromLTRB(left, top, right, bottom);

  const Insets.zero() : super.all(0);
}
