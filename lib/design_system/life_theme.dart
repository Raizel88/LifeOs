import 'package:flutter/material.dart';
import 'life_colors.dart';
import 'life_typography.dart';
import 'life_radius.dart';

/// Centralized theme configuration for LifeOS.
class LifeTheme {
  LifeTheme._();

  /// Returns the dark theme configuration.
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,

      primaryColor: LifeColors.primary,
      scaffoldBackgroundColor: LifeColors.background,

      colorScheme: const ColorScheme.dark(
        primary: LifeColors.primary,
        secondary: LifeColors.secondary,
        surface: LifeColors.surface,
        surfaceContainerHighest: LifeColors.surfaceVariant,
        error: LifeColors.error,
        onPrimary: LifeColors.onPrimary,
        onSecondary: LifeColors.onSecondary,
        onSurface: LifeColors.onSurface,
        onError: LifeColors.onError,
      ),

      textTheme: TextTheme(
        displayLarge: LifeTypography.displayLarge,
        displayMedium: LifeTypography.displayMedium,
        headlineLarge: LifeTypography.headlineLarge,
        headlineMedium: LifeTypography.headlineMedium,
        titleLarge: LifeTypography.titleLarge,
        titleMedium: LifeTypography.titleMedium,
        bodyLarge: LifeTypography.bodyLarge,
        bodyMedium: LifeTypography.bodyMedium,
        bodySmall: LifeTypography.bodySmall,
        labelLarge: LifeTypography.labelLarge,
        labelMedium: LifeTypography.labelMedium,
      ),
        cardTheme: const CardThemeData(
            color: LifeColors.surface,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: LifeRadius.borderRadiusM,
              side: BorderSide(
                color: LifeColors.border,
                width: 1,
              ),
            ),
        ),
      appBarTheme: AppBarTheme(
        backgroundColor: LifeColors.background,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: LifeTypography.titleLarge,
      ),
      dividerTheme: const DividerThemeData(
        color: LifeColors.divider,
        thickness: 1,
        space: 1,
      ),
    );
  }

  /// Prepared light theme (not enabled)
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: LifeColors.primaryLight,
      scaffoldBackgroundColor: LifeColors.backgroundLight,
      colorScheme: const ColorScheme.light(
        primary: LifeColors.primaryLight,
        surface: LifeColors.surfaceLight,
      ),
    );
  }
}

// Fixed missing colors in LifeColors from earlier turn if any
extension ColorSchemeExtension on ColorScheme {
  Color get success => LifeColors.success;
  Color get warning => LifeColors.warning;
  Color get info => LifeColors.info;
}
