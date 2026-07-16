import 'package:flutter/material.dart';
import '../../design_system/life_colors.dart';
import '../../design_system/life_spacing.dart';
import '../../design_system/life_radius.dart';
import '../../design_system/life_typography.dart';
import 'life_loading_indicator.dart';

enum LifeButtonVariant { primary, secondary, outlined, ghost }

/// A production-grade reusable button widget for LifeOS.
class LifeButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final LifeButtonVariant variant;
  final bool isLoading;
  final bool isDisabled;
  final IconData? icon;
  final double? width;

  const LifeButton({
    super.key,
    required this.label,
    this.onPressed,
    this.variant = LifeButtonVariant.primary,
    this.isLoading = false,
    this.isDisabled = false,
    this.icon,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final bool effectiveDisabled = isDisabled || isLoading || onPressed == null;

    return SizedBox(
      width: width,
      height: 48,
      child: _buildButton(effectiveDisabled),
    );
  }

  Widget _buildButton(bool disabled) {
    final Widget content = isLoading
        ? const LifeLoadingIndicator(size: 20)
        : Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                Icon(icon, size: 18),
                const SizedBox(width: LifeSpacing.s),
              ],
              Text(
                label,
                style: LifeTypography.button.copyWith(
                  color: _getTextColor(disabled),
                ),
              ),
            ],
          );

    switch (variant) {
      case LifeButtonVariant.primary:
        return ElevatedButton(
          onPressed: disabled ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: LifeColors.primary,
            disabledBackgroundColor: LifeColors.disabled,
            foregroundColor: LifeColors.onPrimary,
            shape: const RoundedRectangleBorder(borderRadius: LifeRadius.borderRadiusM),
            elevation: 0,
          ),
          child: content,
        );
      case LifeButtonVariant.secondary:
        return ElevatedButton(
          onPressed: disabled ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: LifeColors.secondary,
            disabledBackgroundColor: LifeColors.disabled,
            foregroundColor: LifeColors.onSecondary,
            shape: const RoundedRectangleBorder(borderRadius: LifeRadius.borderRadiusM),
            elevation: 0,
          ),
          child: content,
        );
      case LifeButtonVariant.outlined:
        return OutlinedButton(
          onPressed: disabled ? null : onPressed,
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: disabled ? LifeColors.disabled : LifeColors.primary),
            shape: const RoundedRectangleBorder(borderRadius: LifeRadius.borderRadiusM),
            foregroundColor: LifeColors.primary,
          ),
          child: content,
        );
      case LifeButtonVariant.ghost:
        return TextButton(
          onPressed: disabled ? null : onPressed,
          style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(borderRadius: LifeRadius.borderRadiusM),
            foregroundColor: LifeColors.primary,
          ),
          child: content,
        );
    }
  }

  Color _getTextColor(bool disabled) {
    if (disabled) return LifeColors.textHint;
    switch (variant) {
      case LifeButtonVariant.primary:
        return LifeColors.onPrimary;
      case LifeButtonVariant.secondary:
        return LifeColors.onSecondary;
      case LifeButtonVariant.outlined:
      case LifeButtonVariant.ghost:
        return LifeColors.primary;
    }
  }
}
