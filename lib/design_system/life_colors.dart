import 'package:flutter/material.dart';

/// Centralized semantic color system for LifeOS.
class LifeColors {
  LifeColors._();

  // --- Core Colors ---
  static const Color primary = Color(0xFFBB86FC);
  static const Color primaryVariant = Color(0xFF3700B3);
  static const Color secondary = Color(0xFF03DAC6);
  static const Color secondaryVariant = Color(0xFF018786);
  static const Color accent = Color(0xFFCF6679);

  // --- On Colors (Text/Icons on top of core colors) ---
  static const Color onPrimary = Color(0xFF000000);
  static const Color onSecondary = Color(0xFF000000);
  static const Color onSurface = Color(0xFFFFFFFF);
  static const Color onError = Color(0xFF000000);
  static const Color onBackground = Color(0xFFFFFFFF);

  // --- Semantic Colors ---
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFC107);
  static const Color error = Color(0xFFCF6679);
  static const Color info = Color(0xFF2196F3);

  // --- Neutral Colors (Dark Theme) ---
  static const Color background = Color(0xFF121212);
  static const Color surface = Color(0xFF1E1E1E);
  static const Color surfaceVariant = Color(0xFF2C2C2C);
  static const Color border = Color(0xFF333333);
  static const Color divider = Color(0xFF212121);

  // --- Text Colors ---
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xB3FFFFFF); // 70% opacity
  static const Color textHint = Color(0x61FFFFFF); // 38% opacity
  static const Color disabled = Color(0x61FFFFFF);

  // --- Other ---
  static const Color overlay = Color(0x80000000);
  static const Color transparent = Colors.transparent;

  // --- Light Theme (Prepared but not enabled) ---
  static const Color primaryLight = Color(0xFF6200EE);
  static const Color backgroundLight = Color(0xFFFFFFFF);
  static const Color surfaceLight = Color(0xFFF5F5F5);
  static const Color textPrimaryLight = Color(0xFF000000);
  static const Color textSecondaryLight = Color(0x99000000);
}
