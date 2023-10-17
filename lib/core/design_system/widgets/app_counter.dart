import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_icon_button.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';

class AppCounter extends StatelessWidget {
  final Function() onSubtract;
  final Function() onAdd;
  final int count;
  const AppCounter({
    super.key,
    required this.onSubtract,
    required this.onAdd,
    this.count = 0,
  });

  @override
  Widget build(BuildContext context) {
    final (
      colors: colors,
      texts: texts,
      customColors: _,
    ) = context.theme;
    final textColors = colors.onSurface.withOpacity(.5);
    return Container(
      decoration: BoxDecoration(
        color: colors.scrim.withOpacity(.5),
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: Row(
        children: [
          AppIconButton(
            onTap: onSubtract,
            icon: Icons.do_disturb_on,
            color: textColors,
          ),
          SizedBox(
            width: 20,
            child: Center(
              child: Text(
                count.toString(),
                style: texts.bodyLarge?.copyWith(
                  color: textColors,
                ),
              ),
            ),
          ),
          AppIconButton(
            onTap: onAdd,
            icon: Icons.add_circle,
            color: textColors,
          ),
        ],
      ),
    );
  }
}
