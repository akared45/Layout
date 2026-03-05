import 'package:flutter/material.dart';

class AppColors {
  static const header = _Header();
  static const body = _Body();
  static const footer = _Footer();
  static const action = _Action();
  static const bakery = _Bakery();
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color transparent = Colors.transparent;
  static const Color bakeryBackground = Color(0xFFFFE4E1);
  static const Color bakeryCard = Color(0xFFFFC0CB);
  static const Color bakeryText = Color(0xFF8B4513);
}

class _Header {
  const _Header();
  final Color background = Colors.white;
  final Color text = Colors.black;
  final Color subText = const Color(0xFF9E9E9E);
  final Color icon = Colors.black;
}

class _Body {
  const _Body();
  final Color background = Colors.white;
  final Color searchBar = const Color(0xFFF5F5F5);
  final Color card = Colors.white;
  final Color border = const Color(0xFFE0E0E0);
  final Color rating = const Color(0xFFFFC107);
}

class _Footer {
  const _Footer();
  final Color background = Colors.white;
  final Color iconActive = Colors.black;
  final Color iconInactive = const Color(0xFFBDBDBD);
  final Color topBorder = const Color(0xFFEEEEEE);
}

class _Action {
  const _Action();
  final Color primaryBtn = Colors.black;
  final Color primaryBtnText = Colors.white;
  final Color favoriteBorder = const Color(0xFFE0E0E0);
}

class _Bakery {
  const _Bakery();
  final Color background = const Color(0xFFFDE8E8);
  final Color card = const Color(0xFFFFFFFF);
  final Color accent = const Color(0xFFF06292);
  final Color textDark = const Color(0xFF5D4037);
}
