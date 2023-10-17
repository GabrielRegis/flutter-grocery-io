import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/app/widgets/work_in_progress_placeholder.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_screen.dart';
import 'package:flutter_grocery_list/core/navigation/widgets/app_screen_with_navigation_bar.dart';
import 'package:flutter_grocery_list/features/groceries/screens/grocery_items_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter goRouterProvider(Ref ref) {
  return GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: '/list',
      routes: [
        StatefulShellRoute.indexedStack(
          parentNavigatorKey: rootNavigatorKey,
          pageBuilder: (context, state, navigationShell) {
            return NoTransitionPage(
              child:
                  AppScreenWithNavigationBar(navigationShell: navigationShell),
            );
          },
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: "/list",
                  name: "list",
                  pageBuilder: (c, state) => const MaterialPage(
                    child: GroceryItemsScreen(),
                  ),
                )
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: "/purchases",
                  name: "purchases",
                  pageBuilder: (c, state) => const MaterialPage(
                    child: AppScreen(
                      body: Center(
                        child: WorkInProgressPlaceholder(),
                      ),
                      headerChildren: [],
                      navbarTitle: 'Purchases',
                    ),
                  ),
                  routes: const [
                    // TODO
                    // GoRoute(
                    //   path: 'summary/:id',
                    //   name: "summary",
                    //   pageBuilder: (c, state) {
                    //     final id = state.pathParameters['id'] ?? "";
                    //     return MaterialPage(
                    //       child: PurchaseSummaryScreen(
                    //         purchaseId: id,
                    //       ),
                    //     );
                    //   },
                    // )
                  ],
                ),
              ],
            ),
          ],
        )
      ]);
}
