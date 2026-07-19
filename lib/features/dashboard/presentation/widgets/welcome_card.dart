import 'package:flutter/material.dart';
import '../../../../design_system/life_colors.dart';
import '../../../../design_system/life_spacing.dart';
import '../../../../shared/widgets/life_card.dart';
import '../../../../shared/widgets/life_text.dart';
import 'xp_progress_card.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LifeCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const LifeText.titleLarge('Level 3'),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: LifeSpacing.s,
                  vertical: LifeSpacing.xs,
                ),
                decoration: BoxDecoration(
                  color: LifeColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(LifeSpacing.xs),
                ),
                child: const LifeText.bodySmall(
                  'ADVENTURER',
                  color: LifeColors.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: LifeSpacing.l),
          const XPProgressCard(),
        ],
      ),
    );
  }
}
// ignore_for_file: deprecated_member_use
