import 'package:flutter/material.dart';
import '../../design_system/life_colors.dart';
import '../../design_system/life_spacing.dart';
import '../../design_system/life_radius.dart';

/// A production-grade reusable card widget for LifeOS.
class LifeCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final Color? color;
  final BorderSide? border;

  const LifeCard({
    super.key,
    required this.child,
    this.padding,
    this.onTap,
    this.color,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? LifeColors.surface,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: LifeRadius.borderRadiusM,
        side: border ?? const BorderSide(color: LifeColors.border, width: 1),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: LifeRadius.borderRadiusM,
        child: Padding(
          padding: padding ?? LifeSpacing.edgeInsetsAllL,
          child: child,
        ),
      ),
    );
  }
}
