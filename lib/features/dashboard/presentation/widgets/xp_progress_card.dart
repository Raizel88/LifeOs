import 'package:flutter/material.dart';
import '../../../../design_system/life_colors.dart';
import '../../../../design_system/life_spacing.dart';
import '../../../../shared/widgets/life_text.dart';

class XPProgressCard extends StatelessWidget {
  const XPProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    const double progress = 240 / 500;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LifeText.bodyMedium('XP 240 / 500', color: LifeColors.textSecondary),
            LifeText.bodyMedium('48%', color: LifeColors.primary),
          ],
        ),
        const SizedBox(height: LifeSpacing.s),
        ClipRRect(
          borderRadius: BorderRadius.circular(LifeSpacing.xs),
          child: const LinearProgressIndicator(
            value: progress,
            minHeight: 8,
            backgroundColor: LifeColors.surfaceVariant,
            valueColor: AlwaysStoppedAnimation<Color>(LifeColors.primary),
          ),
        ),
        const SizedBox(height: LifeSpacing.s),
        const LifeText.bodySmall(
          '260 XP until Level 4',
          color: LifeColors.textHint,
        ),
      ],
    );
  }
}
