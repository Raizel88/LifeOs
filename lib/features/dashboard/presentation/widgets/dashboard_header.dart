import 'package:flutter/material.dart';
import '../../../../design_system/life_colors.dart';
import '../../../../design_system/life_spacing.dart';
import '../../../../shared/widgets/life_text.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.eco,
              color: LifeColors.primary,
              size: 32,
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: LifeColors.surfaceVariant,
              child: Icon(Icons.person, color: LifeColors.textSecondary),
            ),
          ],
        ),
        const SizedBox(height: LifeSpacing.xl),
        const LifeText.bodyLarge(
          'Good Morning,',
          color: LifeColors.textSecondary,
        ),
        const LifeText.displayLarge(
          'User',
          color: LifeColors.textPrimary,
        ),
        const SizedBox(height: LifeSpacing.xs),
        LifeText.bodySmall(
          _getFormattedDate(),
          color: LifeColors.textSecondary,
        ),
      ],
    );
  }

  String _getFormattedDate() {
    final now = DateTime.now();
    final months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return '${months[now.month - 1]} ${now.day}, ${now.year}';
  }
}
