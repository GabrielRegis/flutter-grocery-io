import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';
import 'package:flutter_grocery_list/core/theme/widgets/theme_button.dart';

class AppScreen extends StatelessWidget {
  final Widget body;
  final List<Widget> headerChildren;
  final String navbarTitle;
  final ScrollController? scrollController;

  const AppScreen(
      {super.key,
      required this.body,
      required this.headerChildren,
      required this.navbarTitle,
      this.scrollController});

  @override
  Widget build(BuildContext context) {
    final (
      colors: colors,
      texts: texts,
      customColors: _,
    ) = context.theme;

    final headerStyle = texts.headlineSmall?.copyWith(
      fontWeight: FontWeight.w700,
      letterSpacing: -1.5,
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colors.scrim.withOpacity(.5),
              colors.scrim.withOpacity(.2),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            Platform.isAndroid
                ? SliverAppBar.medium(
                    title: Text(navbarTitle, style: headerStyle),
                    actions: const [
                      Padding(
                        padding: Insets.all(4),
                        child: ThemeButton(),
                      )
                    ],
                    centerTitle: false,
                    surfaceTintColor: colors.surface,
                    stretch: true,
                  )
                : CupertinoSliverNavigationBar(
                    key: Key(navbarTitle),
                    trailing: const ThemeButton(),
                    alwaysShowMiddle: false,
                    backgroundColor: colors.surface,
                    largeTitle: Text(navbarTitle, style: headerStyle),
                    middle: Text(
                      navbarTitle,
                      style: headerStyle?.copyWith(fontSize: 16),
                    ),
                  ),
            ...headerChildren,
            SliverFillRemaining(
              child: body,
            ),
          ],
        ),
      ),
    );
  }
}
