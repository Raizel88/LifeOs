import 'package:flutter/material.dart';
import '../../../../design_system/life_colors.dart';
import '../../../../design_system/life_spacing.dart';
import '../../../../shared/widgets/life_card.dart';
import '../../../../shared/widgets/life_text.dart';

class DailyQuoteCard extends StatelessWidget {
  const DailyQuoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const LifeCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.format_quote,
            color: LifeColors.primary,
            size: 24,
          ),
          SizedBox(height: LifeSpacing.s),
          LifeText.bodyLarge(
            '"The pain you avoid today becomes your weakness tomorrow."',
            color: LifeColors.textPrimary,
          ),
          SizedBox(height: LifeSpacing.s),
          LifeText.bodySmall(
            'LifeOS Daily Wisdom',
            color: LifeColors.textSecondary,
          ),
        ],
      ),
    );
  }
}
