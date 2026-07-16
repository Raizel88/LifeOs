import 'package:flutter/material.dart';
import '../../design_system/life_colors.dart';

/// A production-grade reusable loading indicator for LifeOS.
class LifeLoadingIndicator extends StatelessWidget {
  final double size;
  final Color? color;
  final double strokeWidth;

  const LifeLoadingIndicator({
    super.key,
    this.size = 24.0,
    this.color,
    this.strokeWidth = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          strokeWidth: strokeWidth,
          valueColor: AlwaysStoppedAnimation<Color>(color ?? LifeColors.primary),
        ),
      ),
    );
  }
}
