import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/design_system/utils/shadow.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_icon_button.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';

class AppCounter extends StatelessWidget {
  final Function() onSubtract;
  final Function() onAdd;
  final Color? color;
  final int count;
  const AppCounter({
    super.key,
    required this.onSubtract,
    required this.onAdd,
    this.color,
    this.count = 0,
  });

  @override
  Widget build(BuildContext context) {
    final (
      colors: colors,
      texts: texts,
      customColors: _,
    ) = context.theme;
    final textColors = color ?? colors.onSurface;
    return Row(
      children: [
        AppIconButton(
          onTap: onSubtract,
          icon: Icons.remove,
          backgroundColor: colors.secondary,
          color: colors.onSecondary,
          shadow: const [
            AppBoxShadow.lessBlured(),
          ],
          size: 14,
        ),
        SizedBox(
          width: 40,
          child: Center(
            child: Text(
              count.toString(),
              style: texts.bodyLarge?.copyWith(
                color: textColors,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        AppIconButton(
          onTap: onAdd,
          icon: Icons.add,
          backgroundColor: colors.secondary,
          color: colors.onSecondary,
          shadow: const [
            AppBoxShadow.lessBlured(),
          ],
          size: 14,
        ),
      ],
    );
  }
}
