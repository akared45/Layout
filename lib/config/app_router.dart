import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/bakery/presentation/pages/bakery_home_page.dart';
import '../features/food/presentation/widgets/app_bottom_nav.dart';
import '../features/food/presentation/pages/home_page.dart';
import '../features/food/domain/entities/food_entity.dart';
import '../features/food/presentation/pages/detail_page.dart';
import 'app_routes.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: AppRoutes.home,
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return Scaffold(
            body: child,
            bottomNavigationBar: const AppBottomNav(),
          );
        },
        routes: [
          GoRoute(
            path: AppRoutes.home,
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: AppRoutes.detail,
            builder: (context, state) =>
                DetailPage(food: state.extra as FoodEntity),
          ),
          GoRoute(
            path: AppRoutes.bakery,
            builder: (context, state) => const BakeryHomePage(),
          ),
        ],
      ),
    ],
  );
}
