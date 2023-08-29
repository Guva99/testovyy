import 'package:flutter/material.dart';
import 'package:testovoe_zadanie/core/theme/app_color.dart';
import 'package:testovoe_zadanie/core/theme/typography.dart';

  class AppButtonStyle {
  const AppButtonStyle._();

  static final primaryStyleBlue = ElevatedButton.styleFrom(
    backgroundColor: AppColors.purpleBlue,
    foregroundColor: AppColors.white,
    textStyle: AppTypography.boldEffect.bold,
    minimumSize: const Size(double.infinity, 70),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  );

  static final primaryStyleLight = ElevatedButton.styleFrom(
    backgroundColor: AppColors.purpleBlueLight,
    foregroundColor: AppColors.white,
    textStyle: AppTypography.boldEffect.bold,
    minimumSize: const Size(double.infinity, 70),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  );
}
