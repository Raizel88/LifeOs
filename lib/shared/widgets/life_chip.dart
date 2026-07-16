import 'package:flutter/material.dart';
import '../../design_system/life_colors.dart';
import '../../design_system/life_spacing.dart';
import '../../design_system/life_radius.dart';
import '../../design_system/life_typography.dart';

/// A production-grade reusable chip widget for LifeOS.
class LifeChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback? onSelected;
  final Widget? avatar;

  const LifeChip({
    super.key,
    required this.label,
    this.isSelected = false,
    this.onSelected,
    this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (_) => onSelected?.call(),
      avatar: avatar,
      labelStyle: LifeTypography.labelMedium.copyWith(
        color: isSelected ? LifeColors.onPrimary : LifeColors.textPrimary,
      ),
      selectedColor: LifeColors.primary,
      backgroundColor: LifeColors.surfaceVariant,
      padding: LifeSpacing.edgeInsetsHorizontalS,
      shape: RoundedRectangleBorder(
        borderRadius: LifeRadius.borderRadiusRound,
        side: BorderSide(
          color: isSelected ? LifeColors.primary : LifeColors.border,
        ),
      ),
      showCheckmark: false,
    );
  }
}
