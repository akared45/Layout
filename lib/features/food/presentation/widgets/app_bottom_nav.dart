import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/app_colors.dart';
import '../../../../config/app_routes.dart';

class AppBottomNav extends StatelessWidget {
  final int currentIndex;
  const AppBottomNav({super.key, this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: AppColors.footer.topBorder, width: 2),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.footer.background,
        selectedItemColor: AppColors.footer.iconActive,
        unselectedItemColor: AppColors.footer.iconInactive,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          if (index == 0) {
            context.go(AppRoutes.home);
          } else if (index == 1) {
            context.go(AppRoutes.bakery);
          }
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined, size: 28), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline, size: 28), label: "Cake"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined, size: 28), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline, size: 28), label: "User"),
        ],
      ),
    );
  }
}