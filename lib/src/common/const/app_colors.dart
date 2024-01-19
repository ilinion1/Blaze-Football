import 'package:flutter/material.dart';

abstract class AppColors {
  static const orange = Color(0xFFFF6600);
  static const background = Color(0xFF0E1116);
  static const backgroundMiddle = Color(0xFF232B36);
  static const backgroundLight = Color(0xFF2D3745);
  static const white = Colors.white;
  static const red = Color(0xFFE53939);
  static const green = Color(0xFF1DFF41);

  // gradient
  static const gradientBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.01, 0.2],
    colors: [
      AppColors.orange,
      AppColors.background,
    ],
  );
}

abstract class AppFonts {}
