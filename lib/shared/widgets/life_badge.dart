import 'package:flutter/material.dart';
import '../../design_system/life_colors.dart';
import '../../design_system/life_spacing.dart';
import '../../design_system/life_radius.dart';
import '../../design_system/life_typography.dart';

/// A production-grade reusable badge widget for LifeOS.
class LifeBadge extends StatelessWidget {
  final String label;
  final Color? color;
  final Color? textColor;

  const LifeBadge({
    super.key,
    required this.label,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: LifeSpacing.s,
        vertical: LifeSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: color ?? LifeColors.primary,
        borderRadius: LifeRadius.borderRadiusRound,
      ),
      child: Text(
        label,
        style: LifeTypography.labelSmall.copyWith(
          color: textColor ?? LifeColors.onPrimary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
