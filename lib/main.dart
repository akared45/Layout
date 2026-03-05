import 'package:flutter/material.dart';
import 'package:layout1/config/app_router.dart';
import 'config/app_theme.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: AppTheme.LightTheme,
      routerConfig: AppRouter.router,
    );
  }
}
