import 'package:app_l10n/themes/styles.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class AppThemes {
  static final errorInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.0),
    borderSide: const BorderSide(
      color: AppColors.systemNegative,
    ),
  );
  static final focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.0),
    borderSide: BorderSide(
      color: AppColors.borderSecondary.withOpacity(.3),
    ),
  );
  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'FixelText',
    scaffoldBackgroundColor: AppColors.bgPrimary,
    colorScheme: ColorScheme.light(
      primary: AppColors.systemPrimary,
      secondary: AppColors.systemPrimary,
      onErrorContainer: AppColors.systemNegative.withOpacity(.3),
    ),
    textTheme: TextTheme(
      displayLarge:
          AppTextStyle.displayLarge.copyWith(color: AppColors.contentPrimary),
      displayMedium:
          AppTextStyle.displayMedium.copyWith(color: AppColors.contentPrimary),
      displaySmall:
          AppTextStyle.displaySmall.copyWith(color: AppColors.contentPrimary),
      bodyLarge:
          AppTextStyle.bodyLarge.copyWith(color: AppColors.contentPrimary),
      bodyMedium:
          AppTextStyle.bodyMedium.copyWith(color: AppColors.contentPrimary),
      bodySmall:
          AppTextStyle.bodySmall.copyWith(color: AppColors.contentPrimary),
      headlineLarge:
          AppTextStyle.headingLarge.copyWith(color: AppColors.contentPrimary),
      headlineMedium:
          AppTextStyle.headingMedium.copyWith(color: AppColors.contentPrimary),
      headlineSmall:
          AppTextStyle.headingSmall.copyWith(color: AppColors.contentPrimary),
      labelLarge:
          AppTextStyle.labelLarge.copyWith(color: AppColors.contentPrimary),
      labelMedium:
          AppTextStyle.labelMedium.copyWith(color: AppColors.contentPrimary),
      labelSmall:
          AppTextStyle.labelSmall.copyWith(color: AppColors.contentPrimary),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.bgPrimary,
      focusedErrorBorder: errorInputBorder,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      border: focusedBorder,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(
          color: AppColors.borderPrimary,
        ),
      ),
      errorBorder: errorInputBorder,
      focusedBorder: focusedBorder,
      hintStyle:
          AppTextStyle.bodySmall.copyWith(color: AppColors.contentDisable),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: AppColors.systemPrimary,
    ),
  );
}
