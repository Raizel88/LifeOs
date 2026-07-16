import 'package:flutter/material.dart';
import '../../design_system/life_colors.dart';
import '../../design_system/life_spacing.dart';
import '../../design_system/life_radius.dart';
import '../../design_system/life_typography.dart';

/// A production-grade reusable text field widget for LifeOS.
class LifeTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final bool isPassword;
  final TextInputType keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? errorText;
  final ValueChanged<String>? onChanged;

  const LifeTextField({
    super.key,
    this.label,
    this.hint,
    this.controller,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.errorText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: LifeTypography.labelMedium.copyWith(color: LifeColors.textSecondary),
          ),
          const SizedBox(height: LifeSpacing.xs),
        ],
        TextField(
          controller: controller,
          obscureText: isPassword,
          keyboardType: keyboardType,
          onChanged: onChanged,
          style: LifeTypography.bodyLarge,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: LifeTypography.bodyLarge.copyWith(color: LifeColors.textHint),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            errorText: errorText,
            filled: true,
            fillColor: LifeColors.surfaceVariant,
            contentPadding: LifeSpacing.edgeInsetsAllL,
            border: const OutlineInputBorder(
              borderRadius: LifeRadius.borderRadiusM,
              borderSide: BorderSide.none,
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: LifeRadius.borderRadiusM,
              borderSide: BorderSide.none,
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: LifeRadius.borderRadiusM,
              borderSide: BorderSide(color: LifeColors.primary, width: 2),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: LifeRadius.borderRadiusM,
              borderSide: BorderSide(color: LifeColors.error, width: 1),
            ),
          ),
        ),
      ],
    );
  }
}
