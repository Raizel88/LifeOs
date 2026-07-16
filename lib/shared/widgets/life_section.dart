import 'package:flutter/material.dart';
import '../../design_system/life_spacing.dart';
import '../../design_system/life_typography.dart';
import '../../design_system/life_colors.dart';

/// A production-grade reusable section widget for LifeOS.
class LifeSection extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget? action;
  final bool showDivider;

  const LifeSection({
    super.key,
    required this.title,
    required this.child,
    this.action,
    this.showDivider = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: LifeTypography.titleLarge.copyWith(color: LifeColors.primary),
            ),
            if (action != null) action!,
          ],
        ),
        const SizedBox(height: LifeSpacing.m),
        child,
        if (showDivider) ...[
          const SizedBox(height: LifeSpacing.xl),
          const Divider(),
        ],
        const SizedBox(height: LifeSpacing.xxl),
      ],
    );
  }
}
