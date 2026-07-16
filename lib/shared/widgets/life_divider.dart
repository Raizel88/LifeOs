import 'package:flutter/material.dart';
import '../../design_system/life_colors.dart';
import '../../design_system/life_spacing.dart';

/// A production-grade reusable divider for LifeOS.
class LifeDivider extends StatelessWidget {
  final double? indent;
  final double? endIndent;
  final double? thickness;
  final Color? color;
  final double? height;

  const LifeDivider({
    super.key,
    this.indent,
    this.endIndent,
    this.thickness,
    this.color,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height ?? LifeSpacing.xxl,
      thickness: thickness ?? 1,
      color: color ?? LifeColors.divider,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
