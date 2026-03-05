import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get LightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.body.background,
      fontFamily: 'Handwritten',
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.header.background,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.header.icon),
        titleTextStyle: TextStyle(
          color: AppColors.header.text,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Handwritten',
        ),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          color: AppColors.header.text,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(color: AppColors.header.subText),
        bodyMedium: TextStyle(color: AppColors.header.subText),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.body.searchBar,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        hintStyle: TextStyle(color: AppColors.header.subText),
        prefixIconColor: AppColors.header.icon,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.action.primaryBtn,
          foregroundColor: AppColors.action.primaryBtnText,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Handwritten',
          ),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.footer.background,
        selectedItemColor: AppColors.footer.iconActive,
        unselectedItemColor: AppColors.footer.iconInactive,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 10,
      ),
    );
  }
}
