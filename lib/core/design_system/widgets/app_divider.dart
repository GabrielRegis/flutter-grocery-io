import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: .5,
      indent: 0,
      height: 0,
    );
  }
}
